#!/usr/bin/env bash

SELECTION=$(makoctl history -j | jq -r '
    .[] |
    "[\(.app_name)] \(.summary) - \(.body) | \(.id)"
  ' | rofi -dmenu -p "Notifs")

NOTIF_ID=$(echo "$SELECTION" | awk -F ' | ' '{print $NF}')

if [ -n "$NOTIF_ID" ]; then
  makoctl restore
fi
