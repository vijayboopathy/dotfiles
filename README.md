# How to Set Up Dotfiles with GNU Stow on Arch Linux

Managing configuration files doesn’t have to be messy. With GNU Stow, I can keep my dotfiles organized, modular, and easy to update—perfect for anyone running Arch Linux on a server (or desktop).

## What I'll Need

- An Arch Linux installation
- `git` and `stow` installed
- Sudo or root privileges

To get started, make sure these tools are present:

```bash
sudo pacman -S git stow
```

## Cloning my Dotfiles Repo

Pick a spot for my dotfiles (I prefer them in `~/Projects/dotfiles`). Clone my repository:

```bash
git clone https://github.com/vijayboopathy/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

## Setting Up my Dotfiles Directory

For Stow to work its magic, put each application's config files in their own folder. Here’s a sample layout:

```
dotfiles/
 ├── bash/
 │     ├── .bashrc
 │     └── .bash_profile
 ├── i3/
 │     └── .config/i3/config
 ├── kitty/
 │     └── .config/kitty/kitty.conf
 ├── rofi/
 │     └── .config/rofi/config.rasi
 ├── i3blocks/
 │     └── .config/i3blocks/i3blocks.conf
 └── ...
```

*Pro tip: If things aren’t structured like this in the repo, take a minute to tidy them up. It’ll save a lot of headaches later.*

## Symlinking with Stow

Now, it’s time to put Stow to work. From inside the `dotfiles` directory, run the following for each group of configuration files:

```bash
cd ~/dotfiles
stow bash
stow i3
stow kitty
stow rofi
stow i3blocks
```

Stow will create symlinks in my home directory. For example, `~/dotfiles/bash/.bashrc` becomes `~/.bashrc`. If I want to remove a set of links, just run:

```bash
stow -D i3
```

## Installing the Recommended Packages

To get the most out of my configurations, I’ll want to have the following packages installed:

```bash
sudo pacman -S i3-wm i3blocks rofi kitty feh pipewire pipewire-pulse \
  maim xclip xdotool nvidia-utils htop ttf-nerd-fonts-symbols
```

For AUR packages, I’ll need an AUR helper. If I don’t have `paru` yet:

```bash
yay -S paru
```

## Extra Manual Steps

A few things might need my attention after everything’s in place:

- Make sure scripts are executable:
  ```bash
  chmod +x ~/.config/scripts/*
  ```
- Double-check hardware-specific settings (for example, NVIDIA configs if I monitor my GPU)
- Verify wallpaper files such as `~/Pictures/Wallpapers/wallpaper1.jpg` exist
- If I use custom audio setups, list devices:
  ```bash
  pactl list sinks
  ```
- Edit or tweak scripts in `~/.config/scripts/` for my resource monitors or audio preferences

## Keeping Up to Date

Whenever I update my dotfiles and want to pull in the changes:

```bash
cd ~/dotfiles
git pull
stow 
```

## A Few Final Tips

- Always back up my original configs before I start. It’s easy:
  ```bash
  cp ~/.bashrc ~/.bashrc.backup
  cp -r ~/.config ~/.config.backup
  ```
- Got conflicts with existing symlinks? Use `stow -v ` for detailed output and guidance.

With my configurations sorted, managing and syncing settings across machines is much less stressful. Stow helps keep things tidy and portable, and my future self will thank myself.

