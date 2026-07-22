#!/usr/bin/env bash
set -u

if ! command -v playerctl >/dev/null 2>&1 || ! command -v jq >/dev/null 2>&1; then
  printf '{"text":"","tooltip":"Install playerctl and jq for media information"}\n'
  exit 0
fi

emit() {
  local metadata player status artist title display_text
  metadata=$(playerctl metadata --format $'{{playerName}}\t{{status}}\t{{artist}}\t{{title}}' 2>/dev/null)
  if [[ -z "$metadata" ]]; then
    printf '{"text":""}\n'
    return
  fi
  IFS=$'\t' read -r player status artist title <<< "$metadata"
  if [[ -n "$artist" && -n "$title" ]]; then
  display_text=" $artist — $title"
  elif [[ -n "$title" || -n "$artist" ]]; then
    display_text=" ${title:-$artist}"
  else
    display_text=""
  fi
  jq -cn \
    --arg text "$display_text" \
    --arg tooltip "${player:-Media player}: ${status:-Unknown}" \
    --arg alt "${player,,}" \
    --arg class "${status,,}" \
    '{text: $text, tooltip: $tooltip, alt: $alt, class: $class}'
}

# Print initial state immediately
emit

# Then stream updates whenever anything changes
playerctl --follow metadata --format '{{status}}{{artist}}{{title}}' 2>/dev/null | while read -r _; do
  emit
done
