#!/usr/bin/env bash
set -u

if ! command -v playerctl >/dev/null 2>&1 || ! command -v jq >/dev/null 2>&1; then
  printf '{"text":"","tooltip":"Install playerctl and jq for media information"}\n'
  exit 0
fi

metadata=$(playerctl metadata --format '{{playerName}}\t{{status}}\t{{artist}}\t{{title}}' 2>/dev/null) || {
  printf '{"text":""}\n'
  exit 0
}

IFS=$'\t' read -r player status artist title <<< "$metadata"
if [[ -n "$artist" && -n "$title" ]]; then
  display_text="$artist — $title"
else
  display_text="${title:-${artist:-}}"
fi

jq -cn \
  --arg text "$display_text" \
  --arg tooltip "${player:-Media player}: ${status:-Unknown}" \
  --arg alt "${player,,}" \
  --arg class "${status,,}" \
  '{text: $text, tooltip: $tooltip, alt: $alt, class: $class}'
