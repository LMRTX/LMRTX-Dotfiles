# Arch Setup Script

An automated Bash installation script for setting up an Arch Linux environment with my curated list of Wayland components, gaming utilities, audio infrastructure, and applications using `paru`.

## Included Packages

### Official Repos (`pacman`)
* **Audio & Media:** `pipewire`, `pipewire-pulse`, `wireplumber`, `easyeffects`, `lsp-plugins`, `obs-studio`, `mpv`
* **Desktop & Wayland:** `waybar`, `hyprlock`, `swaybg`, `swaync`, `rofi`, `foot`, `thunar`, `file-roller`, `fastfetch`, `nvim`
* **System & Portals:** `wayland`, `xorg-xwayland`, `xdg-desktop-portal`, `xdg-desktop-portal-wlr`, `xdg-desktop-portal-gtk`
* **Gaming & Utilities:** `steam`, `btop`

### AUR (`paru`)
* **`vesktop`** - Discord client with Vencord built-in
* **`mangowm-git`** - Wayland compositor
* **`ly`** - Lightweight TUI display manager
* **`proton-cachyos-slr`** - CachyOS Proton build for Steam
* **`zen-browser-bin`** - Privacy-focused browser binary
* **`lact`** - Linux AMDGPU Control Tool
* **`jellyfin-tui`** - Terminal client for Jellyfin
* **`nwg-look`** - GTK theme settings tool for Wayland

## Usage

1. Clone or download the script:
   ```bash
   git clone [https://github.com/LMRTX/LMRTX-Dotfiles.git](https://github.com/LMRTX/LMRTX-Dotfiles.git)
   cd LMRTX-Dotfiles

2. Make it executable and install:
   ```bash
   chmod +x install.sh
   ./install.sh

3. Enjoy
