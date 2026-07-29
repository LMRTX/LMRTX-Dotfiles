#!/bin/bash

set -e

echo "=== 1. Updating System ==="
sudo pacman -Syu --noconfirm

echo "=== 2. Checking for Paru AUR helper ==="
if ! command -v paru &> /dev/null; then
    echo "'paru' not found. Installing paru from AUR..."
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru
    makepkg -si --noconfirm
    cd ~
    rm -rf /tmp/paru
fi

echo "=== 3. Installing Official Repository Packages ==="
sudo pacman -S --needed --noconfirm \
    steam \
    waybar \
    hyprlock \
    swaybg \
    swaync \
    rofi \
    foot \
    easyeffects \
    pipewire \
    pipewire-pulse \
    wireplumber \
    xdg-desktop-portal \
    xdg-desktop-portal-wlr \
    xdg-desktop-portal-gtk \
    thunar \
    obs-studio \
    file-roller \
    btop \
    mpv \
    fastfetch \
    neovim \
    fish \
    wayland \
    lsp-plugins \
    xorg-xwayland \
    wlsunset

echo "=== 4. Installing AUR Packages via Paru ==="
paru -S --needed --noconfirm \
    vesktop \
    mangowm-git \
    xwayland-satellite-git \
    ly \
    proton-cachyos-slr \
    zen-browser-bin \
    lact \
    jellyfin-tui \
    nwg-look

echo "=== 5. Setting Fish as Default Shell ==="
if ! grep -q "$(which fish)" /etc/shells; then
    echo "$(which fish)" | sudo tee -a /etc/shells
fi
chsh -s "$(which fish)"

echo "=== 6. Enabling ly Display Manager ==="
echo "Enabling ly.service..."
sudo systemctl enable ly.service

if systemctl list-unit-files | grep -q "lactd.service"; then
    echo "Enabling AMD GPU Overclocking"
    sudo systemctl enable --now lactd.service
fi

echo "=== Installation Complete! ==="
echo "Please reboot your system for all changes to take effect."
