# Greed's Hyprland Dotfiles

Welcome!

Thanks for checking out my Hyprland rice. Initially, I designed this with a **Catppuccin theme** in mind but later tweaked it to give it a more **cyberpunk-inspired vibe**.

My main goal was to create a setup that's **clean, attractive, and minimalistic** — something you can truly use on your daily driver without overwhelming animations or distractions. It’s designed to be simple and functional while still being aesthetically pleasing.

If you like what you see, please consider **starring the repository**! Your support motivates me to improve it and add even more useful features.

Have a tweak or improvement in mind? Feel free to **submit a pull request**. If it aligns with the theme, I'll happily merge it. If not, I'll explain the reasoning behind the decision.

Enjoy your OS.

---

## ✨ Features

This Hyprland configuration is packed with features to enhance your workflow and aesthetics:

* 🚀 **Hyprland** - A powerful and responsive tiling Wayland Window Manager.
* 🏃 **Automated Installation** - Includes an installation script that handles dependencies and moves files with user prompts.
* 🎨 **Stunning UI** - Beautiful **Hyprpanel** and **Waybar** (customized and customizable through a GUI) and a refined **Rofi** configuration.
* 🖥️ **Custom Theming** - A bespoke **GTK theme**, custom cursors, and icon sets.
* 🖋️ **Ghostyy Terminal** - A sleek and functional terminal configuration.
* 🔒 **Secure & Stylish Lockscreen** - **Hyprlock** with smooth animations for the lock screen (only when you lock it yourself) and a KDE custom theme-chosen style wallpaper as the entry lock screen.
* 🌄 **Dynamic Wallpapers** - A wallpaper daemon using `swww` and `mpvpaper`, controlled by **Waypaper** (GUI Control Panel).
* 🎵 **Media Controls** - Seamless **play/pause/next** functionality for your media.
* 🧩 **Smart Workspaces** - Efficient **scratchpads** and dynamic workspaces for enhanced productivity.
* 🖱️ **Mouse Gestures** - Intuitive **mouse gestures** support for quicker navigation.
* 🤖 **Multi-Management** - Streamlined control with the `better-control` application.
* 🐚 **Fish & Starship** - A powerful **Fish shell** with a visually appealing **Starship prompt**.
* 🔄 **Auto-Start** - Configured for automatic application and script execution on startup.
* ⚡ **Lightweight** - A highly **lightweight and responsive** configuration for optimal performance.

Need help with **keybindings**? Just press `Super` + `SHIFT` + `H` to access the keybinding guide.

---

## 📸 Screenshots

Witness the aesthetic in action!

**Home Page**
![Home Page](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Homepage.png)

---

**Hyprpanel (Dashboard)**
![Hyprpanel (Dashboard)](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Dashboard(Hyprpanel).png)

---

**Fastfetch**
![Fastfetch](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Fastfetch.png)

---

**Rofi - Apps Displayed**
![Rofi - Apps](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Apps.png)

---

**Rofi - Emoji**
![Rofi - Emoji](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Emoji.png)

---

**Rofi - Files Displayed**
![Rofi - Files](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Files.png)

---

**Spotify (Spicetify)**
![Spotify (Spicetify)](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Spotify.png)

---

**Terminal**
![Terminal Show](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Terminal%20Show.png)

---

**Better Control**
![Better Control](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/better-control.png)

---

**Lockscreen (Hyprpanel)**
![Lockscreen](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/lockscreen.png)

---

## 🛠 Installation

> ⚠️ **WARNING**: This setup is intended for **Nix-OS**. Proceed only if you know what you are doing!
                Due to the declarative nature of Nix, if you follow the steps below, you will get the exact copy of my system.

### 1. Clone the repository:

```bash
git clone [The repo ur in](https://github.com/greedoftheendless/Hyprland-files)

### 2. Move these specific files to their locations
    
    .All the configurations such as Picom, Kitty etc... in ~/.config or $HOME/.config
    .The Hyprland config file in ~/.config/hypr or $HOME/.config/hypr
    .The Nix-config folder contents(3 or more files) in /etc/nixos
    .flake.nix and flake.lock in /etc/nixos

### 3. Re-build your system
    Rebuild your system using the following command

```bash
sudo nixos-rebuild switch


📚 Notes

    Wallpapers are managed by Waypaper, utilizing swww and mpvpaper as the engine/backend.

    Notifications are handled by Sway Notifications Control (Swaync).

    Audio is managed through pavucontrol and wpctl.

    The lock screen uses Hyprpanel with a music player widget (currently under development) and customized theming.

    Autostart applications and scripts are configured within Hyprland's autostart.conf. These can be configured/changed in $HOME/.config/hypr/hyprland.conf under the exec = line.

    Scratchpads are configured for quick access to terminals, music, notes, etc.

    Waybar is highly modular and supports various modules like battery, Wi-Fi, media player, and more.

🙏 Credits

Inspired by and based on the incredible work from:

    Hyprland Wiki

    r/unixporn

    shell-ninja's repo

    Void ninja's repo

    JaKooLit's dots

    Aeon Remnant(for the file structure and mentoring in Nix)

    All the members of VimJoyers discord who made exploring Nix fun and easier than doing alone)

    And many others... (Too many to mention, but I never forget their contributions!)

Things that remain:

    Bash Script to install this stuff onto user device.

    Make Pywal more better and responsive (automated).

🌀 Stay hungry, stay foolish. Keep customizing!

— Greed
