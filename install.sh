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
    wlsunset \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    noto-fonts-extra \
    ttf-jetbrains-mono \
    ttf-jetbrains-mono-nerd \

echo "=== 4. Installing AUR Packages via Paru ==="
paru -S --needed --noconfirm \
    vesktop \
    mangowm-git \
    xwayland-satellite-git \
    ly \
    polkit-gnome \
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

echo "=== 6. Deploying Dotfiles and Configurations ==="

if [ -d ".config" ]; then
    echo "Copying .config directory..."
    mkdir -p ~/.config
    cp -r .config/* ~/.config/
fi

echo "Setting up rofi themes..."
mkdir -p ~/.local/share/rofi/themes
if [ -d "themes" ]; then
    cp -r themes/* ~/.local/share/rofi/themes/
fi

echo "=== 7. Enabling ly Display Manager ==="
echo "Enabling ly.service..."
sudo systemctl enable ly.service

if systemctl list-unit-files | grep -q "lactd.service"; then
    echo "Enabling AMD GPU Overclocking, Pipewire and NetworkManager"
    sudo systemctl enable --now lactd.service
    systemctl --user enable --now pipewire
    systemctl --user enable --now pipewire-pulse
    systemctl --user enable --now wireplumber
    sudo systemctl enable --now NetworkManager.service
fi

echo "=== Installation Complete! ==="
echo "Please reboot your system for all changes to take effect."
