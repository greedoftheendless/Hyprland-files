# Greed's Hyprland Dotfiles

Welcome! This repository contains my personal Hyprland configuration, designed for a clean and efficient workspace.

Initially crafted with a **Catppuccin theme**, I've since refined it to a more **cyberpunk-inspired aesthetic**. The goal was a setup that's **clean, attractive, and minimalistic**, perfect for a daily driver without unnecessary animations or distractions.

If you find this useful, please consider **starring the repository**! Your support is a huge motivator.

Have an idea for a tweak or an improvement? Feel free to **submit a pull request**. If it aligns with the theme, I'll happily merge it.

Enjoy your OS!

---

## ✨ Features

This configuration is packed with features to enhance your workflow and aesthetics:

* 🚀 **Hyprland** - A powerful and responsive tiling Wayland Window Manager.
* 🏃 **Automated Installation** - An included script handles dependencies and file placement with user prompts.
* 🎨 **Stunning UI** - Beautiful **Hyprpanel** and **Waybar**, featuring a customizable GUI, and a refined **Rofi** configuration.
* 🖥️ **Custom Theming** - A bespoke **GTK theme**, custom cursors, and icon sets.
* 🖋️️ **Ghostyy Terminal** - A sleek and functional terminal configuration.
* 🔒 **Secure & Stylish Lockscreen** - **Hyprlock** provides a seamless, animated lock screen with a custom KDE-style wallpaper.
* 🌄 **Dynamic Wallpapers** - A wallpaper daemon using `swww` and `mpvpaper`, controlled by a GUI tool called **Waypaper**.
* 🎵 **Media Controls** - Seamless **play/pause/next** functionality for your media.
* 🧩 **Smart Workspaces** - Efficient **scratchpads** and dynamic workspaces for enhanced productivity.
* 🤖 **Multi-Management** - Streamlined control with the `better-control` application.
* 🐚 **Fish & Starship** - A powerful **Fish shell** with a visually appealing **Starship prompt**.
* 🔄 **Auto-Start** - Configured for automatic application and script execution on startup.
* ⚡ **Lightweight & Responsive** - A highly optimized configuration for optimal performance.

> **Need help with keybindings?** Just press `Super` + `SHIFT` + `H` to access the keybinding guide.

---

## 📸 Screenshots

Witness the aesthetic in action!

| **Home Page** | **Hyprpanel (Dashboard)** | **Fastfetch** |
| :---: | :---: | :---: |
| ![Home Page](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Homepage.png) | ![Hyprpanel (Dashboard)](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Dashboard(Hyprpanel).png) | ![Fastfetch](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Fastfetch.png) |
| **Rofi - Apps** | **Rofi - Emoji** | **Rofi - Files** |
| ![Rofi - Apps](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Apps.png) | ![Rofi - Emoji](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Emoji.png) | ![Rofi - Files](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Files.png) |
| **Spotify (Spicetify)** | **Terminal Show** | **Better Control** |
| ![Spotify (Spicetify)](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Spotify.png) | ![Terminal Show](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Terminal%20Show.png) | ![Better Control](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/better-control.png) |
| **Lockscreen** | | |
| ![Lockscreen](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/lockscreen.png) | | |

---

## 🛠 Installation

> ⚠️ **WARNING**: This setup is intended for **NixOS**. Due to the declarative nature of Nix, following these steps will give you an exact copy of my system.

### 1. Clone the repository

```bash
git clone [https://github.com/greedoftheendless/Hyprland-files](https://github.com/greedoftheendless/Hyprland-files)

### 2. Prepare the dotfiles

Place the contents of the cloned repository into a folder of your choice (e.g., `~/dotfiles`).

### 3. Rebuild your system

Rebuild your system using the following command to apply the configuration.

```bash
sudo nixos-rebuild switch

---

## 📚 Notes & Integrations

* **Wallpapers:** Managed by `Waypaper`, utilizing `swww` and `mpvpaper` as the engine.
* **Notifications:** Handled by Sway Notifications Control (`Swaync`).
* **Audio:** Managed through `pavucontrol` and `wpctl`.
* **Lock Screen:** Uses `Hyprpanel` with a music player widget (currently under development) and custom theming.
* **Auto-Start:** Configured in `$HOME/.config/hypr/hyprland.conf` under the `exec` lines.
* **Scratchpads:** Configured for quick access to terminals, music, and notes.
* **Waybar:** Highly modular, supporting various modules for battery, Wi-Fi, media players, and more.

---

## 🙏 Credits

Inspired by and based on the incredible work from:

* Hyprland Wiki
* r/unixporn
* shell-ninja's repo
* Void ninja's repo
* JaKooLit's dots
* Aeon Remnant (for the file structure and Nix mentoring)
* The VimJoyers Discord community (for making Nix exploration fun and collaborative)

And many others... (Your contributions are never forgotten!)

---

### 📝 To-Do List

* Create a Bash script to automate the installation process for non-NixOS users.
* Improve Pywal integration for better and more responsive theming.

**Stay hungry, stay foolish. Keep customizing!**

— Greed
