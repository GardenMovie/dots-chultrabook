#!/bin/bash

# Folder containing wallpapers
IMG_DIR="$HOME/wallpapers"

LIST=$(find "$IMG_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | sort)

CHOICE=$(
  for img in $LIST; do
    # show filename but add thumbnail
    printf "%s\0icon\x1f%s\n" "$img" "$img"
  done | rofi -dmenu -show-icons -i
)

[ -z "$CHOICE" ] && exit 0

echo "Selected: $CHOICE"


# Set the wallpaper with swww
swww img "$CHOICE" --transition-type grow --transition-step 255 --transition-fps 155
