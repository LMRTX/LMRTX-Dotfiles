# ⚡LMRTX-dotfiles⚡

[![Arch Linux](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Wayland](https://img.shields.io/badge/Wayland-Compositor-000000?style=for-the-badge&logo=wayland&logoColor=white)](https://wayland.freedesktop.org/)
[![Fish Shell](https://img.shields.io/badge/Fish-Shell-2E8B57?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://fishshell.com/)

**An automated Bash installation script for setting up an Arch Linux MangoWM environment with my curated list of Wayland components, gaming utilities, audio infrastructure, configurations and applications using `paru` as the AUR helper. The script will also install and set `fish` as the default shell.**

**`MangoWM` is setup with (in my opinion) sane defaults and a `hyprland` like dynamic feel. (except for screenshot being insert due to TKL keyboard)**
**MangoWM options and binds can be changed from `­~/.config/mango/config.conf`.**

## Included Packages

### Official Repos (`pacman`)
* **Audio & Media:** `pipewire`, `pipewire-pulse`, `wireplumber`, `easyeffects`, `lsp-plugins`, `obs-studio`, `mpv`
* **Desktop & Wayland:** `waybar`, `hyprlock`, `swaybg`, `swaync`, `rofi`, `foot`, `thunar`, `file-roller`, `fastfetch`, `nvim`, `btop`, `wlsunset`
* **System & Portals:** `wayland`, `xorg-xwayland`, `xdg-desktop-portal`, `xdg-desktop-portal-wlr`, `xdg-desktop-portal-gtk`, `xwayland-sateilte`
* **Gaming:** `steam`

### AUR (`paru`)
* **`vesktop`** - Discord client with Vencord built-in
* **`mangowm-git`** - Wayland compositor/window manager
* **`ly`** - Lightweight TUI display manager
* **`proton-cachyos-slr`** - CachyOS Proton build for Steam
* **`zen-browser-bin`** - Performant & customizable Firefox fork
* **`lact`** - AMD GPU OC Tool
* **`jellyfin-tui`** - Terminal client for Jellyfin music
* **`nwg-look`** - GTK theme settings tool for Wayland

## Install 🛠️

1. Download git and clone the repo:
   ```bash
   sudo pacman -S git
   git clone https://github.com/LMRTX/LMRTX-Dotfiles.git
   cd LMRTX-Dotfiles

2. Make it executable and install:
   ```bash
   chmod +x install.sh
   ./install.sh

3. Enjoy!
   
