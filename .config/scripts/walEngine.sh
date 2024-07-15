#!/bin/bash
FILE="/home/knez/.config/wallpapers/$1"

if [ -f "$FILE" ]; then
  printf "preload = $FILE\nwallpaper = ,$FILE" > .config/hypr/hyprpaper.conf
  WAL=`/bin/wal -i "$FILE"`
  echo "$WAL"
  
  killall hyprpaper
  killall waybar
  sleep 1
  hyprpaper &
  waybar &
else
  echo "$FILE does not exist"
fi


