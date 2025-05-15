# Greed's Hyprland Dotfiles
Welcome!
Thanks for checking out my Hyprland rice. Initially, I designed this with a Catpuccin theme in mind but later tweaked it to give it a more cyberpunk-inspired vibe.

The main goal was to create a setup that's clean, attractive, and minimalistic — something you could use on your actual device without overwhelming animations or distractions. It’s designed to be simple and functional while still being aesthetically pleasing.

If you like what you see, please consider starring the repository! Your support will motivate me to improve it and add more useful features.

If you have any tweaks or improvements in mind, feel free to submit a pull request. If I think it fits well with the theme, I’ll merge it. If not, I’ll explain the reasoning for the rejection.

---

## ✨ Features

- 🚀 **Hyprland** - Tiling Wayland Window Manager
- 🎨 Beautiful **Hyprpanel and Waybar**(Customized and customizable through GUI) and customized Rofi.
- 🖥️ Custom GTK theme, cursors, and icons
- 🖋️ **Kitty** terminal configuration
- 🔒 **Hyprlock** with smooth animations for lock screen(only when u lock by yourself) and KDE custom theme chosen style wallpaper as entry lock screen.
- 🌄 Wallpaper daemon with swww and mpvpaper and waypaper(GUI Control Panel)
- 🎵 Media controls (play/pause/next)
- 🧩 Scratchpads and dynamic workspaces
- 🖱️ Mouse gestures support
- 🤖 Multi-Mangement with better-control application 
- 🐚 **Zsh** with Starship prompt
- 🔄 Auto-start applications and scripts
- ⚡ Lightweight and responsive configuration

If any help for keybindings are needed, just press  + SHIFT + H for accessing the keybinding.

## 📸 Screenshots

<details>
<summary>Click to view the screenshots</summary>

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
    

Things that remain

Bash Script to install this stuff onto user device.
Make pywal more better and responsive(automated)
More customization and features that can be used for daily-driving the device.

🌀 Stay hungry, stay foolish. Keep customizing — Greed.
