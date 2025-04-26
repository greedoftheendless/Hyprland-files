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

---

## 📸 Screenshots

<details>
  <summary>Click to expand</summary>

  ![Screenshot 1](https://your-screenshot-link-1)
  
  ![Screenshot 2](https://your-screenshot-link-2)
  
  ![Screenshot 3](https://your-screenshot-link-3)

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

    Hyprland Official Wiki

    r/unixporn
    https://github.com/shell-ninja/hyprconf?tab=readme-ov-file#keyboards
    https://gitlab.com/saibhargav/arch-hypr-1
    https://github.com/JaKooLit/Hyprland-Dots
    


🎯 Final Words

🌀 Stay hungry, stay foolish. Keep customizing — Greed.
