#!/bin/bash

# This script reorganizes my dotfiles for Stow

apps=(aerospace doom hypr i3 i3blocks i3status kitty newsboat nvim rofi scripts solaar waybar)

echo "--- Restructuring directories from .config/ ---"
for app in "${apps[@]}"; do
    echo "Processing '$app'..."
    mkdir -p "$app"/.config
    mv ".config/$app" "$app"/.config/
done

echo "--- Restructuring invidiual config files ---"
echo "Processing 'greenclip'..."
mkdir -p greenclip/.config
mv .config/greenclip.toml greenclip/.config/

echo "Processing '.zshrc'..."
mkdir zsh
mv .zshrc zsh

echo "Processing '.bash*'..."
mkdir bash
mv .bash* bash
mv .profile bash

echo "Remove .config directory..."
rmdir .config


echo "--- Restructuring Complete! ---"
