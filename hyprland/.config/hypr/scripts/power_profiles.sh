#!/usr/bin/env zsh

# Toggle power profile: power-saver -> balanced -> performance -> power-saver
# Designed for use as a Hyprland keybind with powerprofilesctl

current=$(powerprofilesctl get)

case $current in
    power-saver)
        next="balanced"
        ;;
    balanced)
        next="performance"
        ;;
    performance)
        next="power-saver"
        ;;
    *)
        next="balanced"
        ;;
esac

powerprofilesctl set "$next"

# Optional: send a notification (requires libnotify / notify-send)
case $next in
    power-saver)   icon="🔋" ;;
    balanced)      icon="⚡" ;;
    performance)   icon="🚀" ;;
esac

notify-send -t 2000 "Power Profile" "$icon $next" --hint=string:x-dunst-stack-tag:powerprofile
