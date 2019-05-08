#!/bin/sh
# Go to where wallpapers are
cd ~/Pictures/Wallpapers

# Choose a random wallpaper
wallpaper=$(ls | shuf -n 1)

# Generate color scheme using pywal
wal -i $wallpaper
