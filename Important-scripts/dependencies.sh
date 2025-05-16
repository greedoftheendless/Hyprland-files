#!/bin/bash

# Deoendency install script for all OS. This is recommended to be done on arch, as hyprland is used ond tested on Arch and NIx and Fedora.
# So please consider shifting to Fedora, Nix, Arch or Arch-based(Cachy, Manjaro, Garuda, etc...)
# Author: Greed 😈

# ───────────────────────────────────────────
# DETECT CURRENT SHELL
current_shell=$(basename "$SHELL")
echo "🐚 You are currently using: $current_shell"

case "$current_shell" in
bash)
  echo "ℹ️ Bash is lightweight, the default in most OSes, and necessary for scripting."
  ;;
zsh)
  echo "⚙️ Zsh is slightly heavier but highly customizable."
  ;;
fish)
  echo "🐟 Fish is user-friendly but less customizable."
  ;;
*)
  echo "❓ Unknown shell."
  ;;
esac

# ───────────────────────────────────────────
# SHELL CHOICE (Zsh or Fish)
echo ""
echo "📢 Greed's suggestion: Use Zsh for best customizability."
echo "Choose additional shell to install:"
echo "1) Zsh (recommended)"
echo "2) Fish"
read -r shell_choice

declare -a installed_shells=("bash") # Bash is always needed

case "$shell_choice" in
1)
  selected_shell="zsh"
  if ! command -v zsh &>/dev/null; then
    install_zsh=true
  fi
  installed_shells+=("zsh")
  if command -v fish &>/dev/null; then
    remove_fish=true
  fi
  ;;
2)
  selected_shell="fish"
  if ! command -v fish &>/dev/null; then
    install_fish=true
  fi
  installed_shells+=("fish")
  if command -v zsh &>/dev/null; then
    remove_zsh=true
  fi
  ;;
*)
  echo "⚠️ Invalid choice. Defaulting to Zsh."
  selected_shell="zsh"
  install_zsh=true
  installed_shells+=("zsh")
  ;;
esac

# ───────────────────────────────────────────
# CHOOSE DEFAULT SHELL
echo ""
echo "🎯 Choose your default login shell:"
i=1
declare -A shell_options
for sh in "${installed_shells[@]}"; do
  echo "$i) $sh"
  shell_options["$i"]=$sh
  ((i++))
done
read -r default_shell_choice

default_shell="${shell_options[$default_shell_choice]}"
if [[ -z "$default_shell" ]]; then
  echo "⚠️ Invalid choice. Falling back to bash."
  default_shell="bash"
fi
set_default_shell=true
