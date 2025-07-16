#!/bin/bash

# Define the options for the power menu
# Each option is in the format: "ICON  TEXT"
# The Nerd Font icons are:  (power),  (reboot),  (lock),  (logout),  (suspend)
options="  Shutdown\n  Reboot\n  Lock\n  Logout\n  Suspend"

# Show wofi with the options
# We use a custom theme for the power menu to make it smaller
selected_option=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu" --width 250 --height 280 --style ~/.config/wofi/style.css --conf ~/.config/wofi/config)

# Execute the command based on the selected option
case "$selected_option" in
    "  Shutdown")
        systemctl poweroff
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "  Lock")
        # I use hyprlock
        hyprlock
        ;;
    "  Logout")
        # I use hyprland
        hyprctl dispatch exit ""
        # or: swaymsg exit
        ;;
    "  Suspend")
        systemctl suspend
        ;;
esac
