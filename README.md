# Greed's Hyprland Dotfiles

> My custom Arch Linux(Cachy OS) setup using Hyprland window manager, optimized for aesthetics and performance.

![Hyprland Screenshot](https://your-main-screenshot-link-here)

---

## ✨ Features

- 🚀 Hyprland - Tiling Wayland Window Manager
- 🎨 Beautiful Hyprpanel(Customized and customizable through GUI) and customized Rofi.
- 🖥️ Custom GTK theme, cursors, and icons
- 🖋️ Kitty terminal configuration
- 🔒 Hyprlock with smooth animations for lock screen(only when u lock by yourself) and KDE custom theme chosen style wallpaper as entry lock screen.
- 🎧 Audio management with pavucontrol/wpctl
- 🌄 Wallpaper daemon with swww and mpvpaper and waypaper(GUI Control Panel)
- 🎵 Media controls (play/pause/next)
- 🧩 Scratchpads and dynamic workspaces
- 🖱️ Mouse gestures support
- 🔥 Fast animations and rounded corners
- 🐚 Zsh with Starship prompt
- 🔄 Auto-start applications and scripts
- ⚡ Lightweight and responsive configuration

If any help for keybindings are needed, just press  + SHIFT + H for accessing the keybinding. Make sure to get the rofi file from .conf/hypr/scripts and .conf/rofi/themes.
---

## 📸 Screenshots

<details>
<summary>Click to expand screenshots</summary>

  Home Page
![Home Page](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Home%20Page.png?raw=true)

  Hyprpanel(Dashboard)

![Hyprpanel (Dashboard)](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Hyprpanel(Dashboard).png?raw=true)

  Rofi - With Apps
![Rofi - Apps](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Apps.png?raw=true)

  Rofi - With Emoji
![Rofi - Emoji](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Emoji.png?raw=true)

  Rofi - With Files
![Rofi - Files](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Rofi-Files.png?raw=true)

  Spotify - With Spictify
![Spotify (Spictified)](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Spotify(Spictified).png?raw=true)

  Terminal
![Terminal Show](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/Terminal-Show.png?raw=true)

  Better Control(Hyprland GUI Control-Centre)
![Better Control](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/better-control.png?raw=true)

  Lockscreen(Hyprlock)
![Lockscreen](https://github.com/greedoftheendless/Hyprland-files/blob/main/Screenshots/lockscreen.png?raw=true)

</details>


---

## 🛠 Installation

> ⚠️ WARNING: This setup is intended for **Arch Linux** based distributions. Proceed only if you know what you are doing!

### 1. Clone the repository:

```bash
git clone https://github.com/yourusername/your-repo-name ~/.config/
```

Install the required packages
```bash
yay -S hyprland waybar rofi kitty swww lazyvim mpvpaper waypaper Hyprpanel starship zsh playerctl grim slurp picom 
```
Adjust packages if needed depending on your setup.

Symlink or copy necessary config files:

The files in dotfile folders were the one I have symlinked. Any importand folders you feel can be symlinked, but the dotfile files are the one I would recommend symlinking as those are your main terminall files.

Or manually move/copy them based on your preference.

 Set Hyprland as your session:

If you're using a display manager (GDM, SDDM, etc.), select Hyprland before logging in.

If using TTY, you can start it manually with:

exec Hyprland


📚 Notes

Wallpapers are managed by waypaper(using swww and mpvpaper as an engine/backend).

Notifications handled by Sway Notifications Control(Swaync).

Audio managed through pavucontrol and wpctl.

Lock screen uses hyprpanel with music player widget(under dev) and customized theming.

Autostart apps/scripts configured inside Hyprland's autostart.conf

These can be configured/changed in $HOME/.config/hypr/hyprland.conf under the exec = line.

Scratchpads are configured for quick access terminals, music, notes, etc.

Waybar is highly modular and supports multiple modules like battery, wifi, media player, etc.

🙏 Credits

Inspired and based on the incredible work from:

[Hyprland Wiki](https://hyprland.org)

[r/unixporn](https://www.reddit.com/r/unixporn)

[shell-ninja's repo](https://github.com/shell-ninja/hyprconf?tab=readme-ov-file#keyboards)

[Void ninja's repo](https://gitlab.com/saibhargav/arch-hypr-1)

[JaKooLit's dots](https://github.com/JaKooLit/Hyprland-Dots)
    


🎯 Final Words

🌀 Stay hungry, stay foolish. Keep customizing — Greed.
