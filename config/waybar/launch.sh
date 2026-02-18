#!/usr/bin/sh

dir="$HOME/.config/waybar"

launch_bar() {
    killall waybar
    while pgrep waybar > /dev/null; do killall waybar; done
    waybar -c "$dir/config.jsonc" -s "$dir/pill.css" &
}

launch_bar
