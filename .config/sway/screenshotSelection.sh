#!/bin/sh
slurp | grim -g - $(xdg-user-dir PICTURES)/$(date +'screenshot_%Y-%m-%d-%H%M%S.png') && notify-send "Screenshot of selected area saved to folder"
