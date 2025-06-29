# Dotfiles Repository

A comprehensive collection of configuration files and scripts for a fully-featured Arch Linux desktop environment using i3 window manager with advanced system monitoring and media controls.

## 🖥️ Desktop Environment Overview

This dotfiles repository provides:
- **Window Manager**: i3 with custom keybindings and workspace configuration
- **Status Bar**: i3blocks with comprehensive system monitoring and media controls
- **Terminal**: Kitty terminal emulator with optimized configuration
- **Launcher**: Rofi application launcher with custom theme
- **Audio**: PipeWire integration with volume controls and device switching
- **Theme**: GTK2 styling and wallpaper management

## 📁 Repository Structure

### Root Configuration Files
- **`.bashrc`** - Shell configuration with aliases, environment variables, and custom prompt
- **`.bash_profile`** - Login shell configuration that sources `.bashrc`
- **`.xinitrc`** - X11 session startup script for i3 window manager
- **`.gtkrc-2.0`** - GTK2 theme and appearance settings
- **`.fehbg`** - Wallpaper restoration script for feh

### Application Configurations (`.config/`)
- **`i3/config`** - i3 window manager configuration (keybindings, workspaces, styling)
- **`i3blocks/i3blocks.conf`** - Status bar configuration with custom blocks
- **`i3status/i3status.conf`** - Alternative status bar configuration
- **`rofi/config.rasi`** - Rofi launcher theme and behavior
- **`kitty/kitty.conf`** - Kitty terminal emulator settings

## 🔧 i3blocks Scripts & Features

The status bar includes these sophisticated monitoring and control scripts:

### 📦 System Monitoring
- **`arch-update`** (Python) - Monitors pacman and AUR updates with notification system
- **`cpu-usage`** (Bash) - Real-time CPU usage with color-coded warnings (50%/80% thresholds)
- **`memory`** (Bash) - RAM usage monitoring with percentage and color indicators  
- **`gpu-load`** (Bash) - NVIDIA GPU memory usage monitoring with temperature alerts
- **`disk`** (Bash) - Disk space monitoring with low space warnings

### 🎵 Media & Audio Controls
- **`firefox-media`** (Bash) - Advanced Firefox media control with:
  - Play/pause toggle (left click)
  - Next/previous track (middle/right click) with smart capability detection
  - Volume control via PipeWire (scroll wheel)
  - Dynamic icons based on media type (single video vs playlist)
  - User notifications for unsupported operations
- **`volume-pipewire`** (Bash) - Comprehensive PipeWire audio management:
  - Volume adjustment and mute toggle
  - Audio device switching
  - Visual volume indicators
  - Click-to-cycle through audio devices

### 🚀 Quick Access
- **YouTube Link** - Direct browser launch to YouTube (orange gradient styling)
- **Date/Time** - Real-time clock with full date display

## 🎨 Visual Features

### Status Bar Styling
- **Nerd Font Icons**: Professional iconography throughout (CPU: `󰻠`, Memory: `󰍛`, GPU: `󰾲`)
- **Color-Coded Warnings**: Green/Yellow/Red system for resource monitoring
- **Dynamic Icons**: Context-aware media controls (▶️ for videos, 🎵 for playlists)
- **Consistent Spacing**: Professional layout with proper separators

### Theme Integration
- **Glass Morphism**: Backdrop blur effects where supported
- **Gradient Accents**: Orange highlights for interactive elements
- **Responsive Design**: Adapts to different screen sizes and DPI settings

## ⚡ Advanced Features

### Smart Media Control
- **Capability Detection**: Only enables next/previous when media supports it
- **PipeWire Integration**: Direct audio stream control bypassing broken MPRIS volume
- **Multi-Stream Support**: Handles multiple Firefox audio streams simultaneously
- **User Feedback**: Notifications explain why controls may be unavailable

### System Monitoring Intelligence
- **Threshold-Based Alerts**: Customizable warning levels for all monitored resources
- **Efficient Updates**: Smart interval timing to balance responsiveness and performance
- **Error Handling**: Graceful fallbacks when hardware monitoring fails
- **Cross-Platform**: Works with both Intel and NVIDIA graphics

### Audio System
- **Device Auto-Detection**: Automatically discovers available audio devices
- **Seamless Switching**: Click to cycle through headphones, speakers, etc.
- **Volume Persistence**: Maintains per-device volume levels
- **Visual Feedback**: Clear indication of current device and volume state

## 🛠️ Installation

### Quick Setup
```bash
# Clone repository
git clone git@github.com:vijayboopathy/dotfiles.git ~/Projects/dotfiles
cd ~/Projects/dotfiles

# Copy core dotfiles
cp -v .bashrc .bash_profile .xinitrc .gtkrc-2.0 .fehbg ~/

# Create config directories and copy files
mkdir -p ~/.config/{i3,rofi,kitty,i3blocks,i3status,scripts}
cp -rv .config/* ~/.config/

# Make scripts executable
chmod +x ~/.config/scripts/*
```

### Prerequisites
```bash
# Essential packages
sudo pacman -S i3-wm i3blocks rofi kitty feh pipewire pipewire-pulse

# System monitoring tools
sudo pacman -S nvidia-utils htop  # For GPU monitoring

# Font support
sudo pacman -S ttf-nerd-fonts-symbols  # For icons

# Optional: AUR helper for update monitoring
yay -S paru  # or your preferred AUR helper
```

## ⚙️ Customization

### Resource Monitoring Thresholds
Edit individual scripts to adjust warning levels:
```bash
# CPU usage warnings
vim ~/.config/scripts/cpu-usage
# Modify T_WARN=50 and T_CRIT=80

# GPU temperature alerts  
vim ~/.config/scripts/gpu-load
# Modify T_WARN=70 and T_CRIT=90
```

### Audio Device Priority
```bash
# Customize device switching order
vim ~/.config/scripts/volume-pipewire
# Modify device detection logic as needed
```

### Media Control Behavior
```bash
# Adjust volume step size or notification timing
vim ~/.config/scripts/firefox-media
# Modify pactl volume increments (+5%) or notification duration (2000ms)
```

### Status Bar Layout
```bash
# Reorder blocks or adjust intervals
vim ~/.config/i3blocks/i3blocks.conf
# Change interval values or block positions
```

## 🔧 Dependencies

### Required Packages
- **i3-wm** - Window manager
- **i3blocks** - Status bar
- **rofi** - Application launcher  
- **kitty** - Terminal emulator
- **feh** - Wallpaper setter
- **pipewire + pipewire-pulse** - Audio system
- **ttf-nerd-fonts-symbols** - Icon fonts

### Optional Packages
- **nvidia-utils** - For GPU monitoring (NVIDIA cards)
- **paru/yay** - AUR helper for update checking
- **libnotify** - Desktop notifications
- **pactl** - Audio control utility (usually included with pipewire)

## 🎯 Key Features Summary

✅ **Complete Desktop Environment** - Fully configured i3 setup  
✅ **Advanced System Monitoring** - CPU, RAM, GPU, disk space with intelligent alerting  
✅ **Professional Media Controls** - Smart Firefox integration with PipeWire audio  
✅ **Modern Visual Design** - Nerd Font icons and consistent styling  
✅ **Efficient Performance** - Optimized update intervals and resource usage  
✅ **User-Friendly Feedback** - Clear notifications and status indicators  
✅ **Modular Architecture** - Easy to customize individual components  
✅ **Cross-Hardware Support** - Works with various audio and graphics configurations  

## 📝 Notes

- **Wallpaper Path**: Ensure your wallpaper exists at `~/Pictures/Wallpapers/wallpaper1.jpg`
- **Script Permissions**: All scripts in `.config/scripts/` must be executable
- **GPU Monitoring**: Currently optimized for NVIDIA cards; modify `gpu-load` for AMD
- **Audio Device Names**: PipeWire device names may vary; check with `pactl list sinks`
- **Update Frequency**: Adjust i3blocks intervals based on your system performance needs

## 🔄 Maintenance

### Backup Current Configs
```bash
# Before installation, backup existing configs
cp ~/.bashrc ~/.bashrc.backup
cp -r ~/.config ~/.config.backup
```

### Update Repository
```bash
# To save new configurations
cd ~/Projects/dotfiles
cp ~/.config/scripts/* .config/scripts/
cp ~/.config/i3blocks/i3blocks.conf .config/i3blocks/
git add . && git commit -m "Update configurations"
git push
```

This dotfiles repository represents a production-ready, feature-complete Linux desktop environment with professional-grade system monitoring and media control capabilities.