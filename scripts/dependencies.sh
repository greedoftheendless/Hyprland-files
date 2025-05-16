#!/bin/bash

# Hyprland Setup Script for Arch-based Distros
# Author: Abhijit Sudheer

# ───────────────────────────────────────────
# BROWSER INSTALLATION PROMPT
echo "🌐 Do you already have a web browser installed? (y/n)"
read -r has_browser

if [[ "$has_browser" =~ ^[Nn]$ ]]; then
  echo "Choose browsers to install (enter numbers separated by space):"
  echo "1) Zen (beta)"
  echo "2) Firefox"
  echo "3) Floorp"
  echo "4) Google Chrome"
  echo "5) Tor Browser"
  read -r browser_choices

  for choice in $browser_choices; do
    case $choice in
    1) browsers+=("zen-browser-bin") ;;
    2) browsers+=("firefox") ;;
    3) browsers+=("floorp-bin") ;;
    4) browsers+=("google-chrome") ;;
    5) browsers+=("torbrowser-launcher") ;;
    *) echo "⚠️ Invalid browser option: $choice" ;;
    esac
  done
else
  echo "✅ Skipping browser installation."
fi

# ───────────────────────────────────────────
# TEXT EDITOR PROMPT
echo ""
echo "📝 A **text editor** is used to write code or edit configuration files."
echo "Choose editors to install (you can select multiple, e.g. '1 2'):"
echo "1) VS Code (GUI, modern)"
echo "2) Neovim (terminal-based, fast and extensible)"
echo "3) Vim (classic terminal editor)"
echo "4) LazyVim (Neovim preconfigured with LazyGit)"
read -r editor_choices

for choice in $editor_choices; do
  case $choice in
  1) editors+=("visual-studio-code-bin") ;;
  2) editors+=("neovim") ;;
  3) editors+=("vim") ;;
  4) editors+=("neovim" "lazygit") ;; # LazyVim needs both
  *) echo "⚠️ Invalid editor option: $choice" ;;
  esac
done

# ───────────────────────────────────────────
# BACKUP TOOL PROMPT
echo ""
echo "💾 Do you want to install Timeshift for system backups? (y/n)"
read -r install_backup

if [[ "$install_backup" =~ ^[Yy]$ ]]; then
  backup_tool="timeshift"
  echo "📝 Timeshift will be installed. Please make a backup after setup finishes."
  remind_backup=true
fi

# ───────────────────────────────────────────
# UPDATE SYSTEM
echo "🔄 Updating system..."
sudo pacman -Syu --noconfirm

# CHECK yay INSTALLATION
if ! command -v yay &>/dev/null; then
  echo "📦 yay not found. Installing yay..."
  sudo pacman -S --needed git base-devel --noconfirm
  git clone https://aur.archlinux.org/yay.git
  cd yay && makepkg -si --noconfirm && cd ..
  rm -rf yay
fi

# ───────────────────────────────────────────
# PACKAGE INSTALLATION LIST

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
  waypaper
  swww
  mpvpaper
)

# Add user-selected browsers and editors
PKGS+=("${browsers[@]}")
PKGS+=("${editors[@]}")

# Add backup tool if chosen
if [[ "$remind_backup" == true ]]; then
  PKGS+=("$backup_tool")
fi

# ───────────────────────────────────────────
# INSTALL PACKAGES
echo "🚀 Installing selected packages..."
for pkg in "${PKGS[@]}"; do
  yay -S --noconfirm --needed "$pkg"
done

# ───────────────────────────────────────────
# INSTALL HYPRPANEL (from source)
if ! command -v hyprpanel &>/dev/null; then
  echo "🔧 Installing hyprpanel from GitHub..."
  git clone https://github.com/hyprwm/hyprpanel.git ~/hyprpanel
  cd ~/hyprpanel
  make && sudo make install
  cd ~
fi

# ───────────────────────────────────────────
# SHELL SETUP
echo "🛠️ Setting Zsh as default shell..."
chsh -s "$(which zsh)"
echo 'eval "$(starship init zsh)"' >>~/.zshrc

# ───────────────────────────────────────────
# SPICETIFY CONFIG
echo "🎵 Configuring Spicetify..."
spicetify config current_theme text
spicetify backup apply

# ───────────────────────────────────────────
# DONE
echo ""
echo "✅ Hyprland environment setup completed successfully!"

if [[ "$remind_backup" == true ]]; then
  echo "📢 IMPORTANT: Please launch Timeshift and create a backup before making more changes."
fi

echo "🔁 Reboot your system to apply all changes."
