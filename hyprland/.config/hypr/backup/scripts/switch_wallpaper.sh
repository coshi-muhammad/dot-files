#!/usr/bin/zsh


DarkTheme="0"

WallPaperDir=~/Pictures/WallPapers
CurrentWallPaper=$(find "$WallPaperDir" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$CurrentWallPaper"
hyprctl hyprpaper wallpaper ", $CurrentWallPaper" 


echo "\$wallpaper="$CurrentWallPaper"" > ~/.config/hypr/current_wall.conf
