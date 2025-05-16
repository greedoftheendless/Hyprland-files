#!/bin/bash

# Hyprland Setup Script for Arch-based Distros
# Author: Abhijit Sudheer

# Update system
echo "Updating system..."
sudo pacman -Syu --noconfirm

# Check yay installation
if ! command -v yay &>/dev/null; then
  echo "yay not found. Installing yay..."
  sudo pacman -S --needed git base-devel --noconfirm
  git clone https://aur.archlinux.org/yay.git
  cd yay && makepkg -si --noconfirm && cd ..
  rm -rf yay
fi

# Install dependencies from official repos and AUR
echo "Installing dependencies..."

PKGS=(
  hyprland
  kitty
  waybar
  rofi
  spotify
  spicetify-cli
  wlogout
  zsh
  starship
  picom
  cava
  fastfetch
  hypridle
  hyprlock
  python-pywal
  swaynotificationcenter
  caffeine-ng
  nerd-fonts-jetbrains-mono
  ttf-hack-nerd
  ttf-noto-nerd
  betterlockscreen
)

for pkg in "${PKGS[@]}"; do
  yay -S --noconfirm --needed "$pkg"
done

# Optional: Hyprpanel (community project)
if ! command -v hyprpanel &>/dev/null; then
  echo "Installing hyprpanel from GitHub..."
  git clone https://github.com/hyprwm/hyprpanel.git ~/hyprpanel
  cd ~/hyprpanel
  make && sudo make install
  cd ~
fi

# Set Zsh as default shell
echo "Changing default shell to zsh..."
chsh -s $(which zsh)

# Setup Starship prompt
echo 'eval "$(starship init zsh)"' >>~/.zshrc

# Setup Spicetify
echo "Configuring Spicetify..."
spicetify config current_theme text
spicetify backup apply

# Fonts already handled by Nerd Fonts installation

# Done
echo "✅ Hyprland environment setup completed!"
echo "🔁 Please reboot to apply all changes."
