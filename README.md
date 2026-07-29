# ⚡LMRTX-dotfiles⚡

[![Arch Linux](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Wayland](https://img.shields.io/badge/Wayland-Compositor-000000?style=for-the-badge&logo=wayland&logoColor=white)](https://wayland.freedesktop.org/)
[![Fish Shell](https://img.shields.io/badge/Fish-Shell-2E8B57?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://fishshell.com/)

**An automated Bash installation script for setting up an Arch Linux MangoWM environment with my curated list of Wayland components, gaming utilities, audio infrastructure, configurations and applications using `paru` as the AUR helper.**

**I built this `MangoWM` environment with (in my opinion) sane defaults and a `hyprland` like dynamic feel using dwindle-tiling and all the eye-candy while still being lightweight for a Wayland session. This is NOT for someone looking for a traditional `dwm`/`dwl`-like experience.**


<img width="3438" height="1440" alt="2026-07-29-041138_hyprshot" src="https://github.com/user-attachments/assets/15b8dc02-c7fa-424f-8e4e-3977f9161afe" />


## Included Packages

### Official Repo (`pacman`)
* **Audio & Media:** `pipewire`, `pipewire-pulse`, `wireplumber`, `easyeffects`, `lsp-plugins`, `obs-studio`, `mpv`
* **Desktop & Wayland:** `waybar`, `hyprlock`, `swaybg`, `swaync`, `rofi`, `foot`, `thunar`, `file-roller`, `fastfetch`, `nvim`, `btop`, `wlsunset`
* **System & Portals:** `wayland`, `xorg-xwayland`, `xdg-desktop-portal`, `xdg-desktop-portal-wlr`, `xdg-desktop-portal-gtk`, `xwayland-sateilte`
* **Gaming:** `steam`

### AUR (`paru`)
* **`vesktop`** - Discord client with Vencord built-in
* **`mangowm-git`** - Wayland compositor
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

## **Keybind list**

| Action | Keybinding |
| :--- | :--- |
| **Launch terminal** | <kbd>SUPER</kbd> + <kbd>T</kbd> |
| **Launch Rofi** | <kbd>SUPER</kbd> + <kbd>Space</kbd> |
| **Kill window** | <kbd>SUPER</kbd> + <kbd>W</kbd> |
| **Change tiling** | <kbd>SUPER</kbd> + <kbd>N</kbd> |
| **Launch Thunar** | <kbd>SUPER</kbd> + <kbd>E</kbd> |
| **Fullscreen** | <kbd>SUPER</kbd> + <kbd>F</kbd> |
| **Screenshot** | <kbd>Ins</kbd> |
| **Toggle floating** | <kbd>SUPER</kbd> + <kbd>V</kbd> |
| **Lockscreen** | <kbd>SUPER</kbd> + <kbd>L</kbd> |
| **Exit session** | <kbd>SUPER</kbd> + <kbd>M</kbd> |
| **Change workspace** | <kbd>SUPER</kbd> + <kbd>Workspace Number</kbd> |
| **Move window to workspace** | <kbd>SUPER</kbd> + <kbd>Shift</kbd> + <kbd>Workspace Number</kbd> |
