#!/bin/bash

scripts_dir="$HOME/.config/hypr/scripts"
current_wallpaper="$HOME/.config/hypr/.cache/current_wallpaper.png"
current_mode=$(cat "$HOME/.config/hypr/.cache/.current_mode")

# Check if wallpaper exists
if [[ -f "$current_wallpaper" ]]; then
  # Generate colors based on wallpaper and mode
  if [[ -f "$HOME/.config/hypr/.cache/.current_mode" ]]; then
    if [[ "$current_mode" == "dark" ]]; then
      wal -q -e -i "$current_wallpaper"
    elif [[ "$current_mode" == "light" ]]; then
      wal -q -e -l -i "$current_wallpaper"
    fi
  else
    wal -q -e -i "$current_wallpaper"
  fi
else
  echo "No wallpaper found!"
  exit 1
fi

# Path to generated kitty colors
kitty_colors="$HOME/.cache/wal/colors-kitty.conf"
kitty_config="$HOME/.config/kitty/kitty.conf"

# Define a function to extract specific color
extract_color() {
  color_keyword="$1"
  grep "^${color_keyword}" "$kitty_colors" | awk '{print $2}'
}

# Extract colors for active/inactive borders
active_border_color=$(extract_color "foreground")
inactive_border_color=$(extract_color "color5")

# Update kitty config
sed -i "s/active_border_color .*$/active_border_color $active_border_color/g" "$kitty_config"
sed -i "s/inactive_border_color .*$/inactive_border_color $inactive_border_color/g" "$kitty_config"

# Link full generated kitty theme (optional if you want full theme not just borders)
ln -sf "$kitty_colors" "$HOME/.config/kitty/colors.conf"

# Apply new colors dynamically
kill -SIGUSR1 $(pidof kitty)

exit 0
