#!/bin/bash

# ================= CONFIGURATION =================
# Run 'solaar show' to find your exact device name
DEVICE_NAME="MX Master 3"

# Define your two states (DPI values)
# Note: MX Master 3 usually supports values like 1000, 2000, 4000
MODE_A_VALUE="1000"
MODE_B_VALUE="2000"
# =================================================

# 1. Get current setting using Solaar
# We look for "sensitivity" or "dpi" in the config output
CURRENT_STATUS=$(solaar config "$DEVICE_NAME" | grep -i "sensitivity\|dpi")

# Print raw output for debugging
echo "Raw Status: $CURRENT_STATUS"

# Check if Solaar found the device
if [ $? -ne 0 ] || [ -z "$CURRENT_STATUS" ]; then
    notify-send "Logitech MX Master 3" "Error: Mouse not found or Solaar not running." -u critical
    exit 1
fi

# 2. Extract the current numeric value
# This cleans the output to get just the number (e.g., "1000")
CURRENT_VALUE=$(echo "$CURRENT_STATUS" | grep -oP '\d+$')

echo "Current DPI: $CURRENT_VALUE"

# 3. Decide what to do based on the current mode
if [ "$CURRENT_VALUE" == "$MODE_A_VALUE" ]; then
    # Mimic "Turning On" -> Switch to Mode B (High Speed)
    notify-send "Logitech MX Master 3" "Switching to High Sensitivity ($MODE_B_VALUE DPI)..."
    
    solaar config "$DEVICE_NAME" sensitivity $MODE_B_VALUE
    
    if [ $? -eq 0 ]; then
        notify-send "Logitech MX Master 3" "Mode: High Speed (Active)"
        echo "Switched to $MODE_B_VALUE"
    else
        notify-send "Logitech MX Master 3" "Failed to switch DPI." -u critical
    fi

else
    # Mimic "Turning Off" -> Switch to Mode A (Standard Speed)
    notify-send "Logitech MX Master 3" "Resetting to Standard Sensitivity ($MODE_A_VALUE DPI)..."
    
    solaar config "$DEVICE_NAME" sensitivity $MODE_A_VALUE
    
    if [ $? -eq 0 ]; then
        notify-send "Logitech MX Master 3" "Mode: Standard (Active)"
        echo "Switched to $MODE_A_VALUE"
    else
        notify-send "Logitech MX Master 3" "Failed to switch DPI." -u critical
    fi
fi
