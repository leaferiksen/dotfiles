#!/bin/sh
grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" $(xdg-user-dir PICTURES)/$(date +'screenshot_%Y-%m-%d-%H%M%S.png') && notify-send "Screenshot of active window saved to folder"
