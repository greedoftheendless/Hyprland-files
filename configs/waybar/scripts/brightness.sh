#!/usr/bin/env bash

while true; do
  # Get brightness as a percentage
  brightness_info=$(brightnessctl -m | awk -F',' '{print $4}' | tr -d '%')
  percent=$brightness_info

  # Determine filled blocks manually
  filled_blocks=0
  if (( percent >= 100 )); then
    filled_blocks=10
  elif (( percent >= 90 )); then
    filled_blocks=9
  elif (( percent >= 80 )); then
    filled_blocks=8
  elif (( percent >= 70 )); then
    filled_blocks=7
  elif (( percent >= 60 )); then
    filled_blocks=6
  elif (( percent >= 50 )); then
    filled_blocks=5
  elif (( percent >= 40 )); then
    filled_blocks=4
  elif (( percent >= 30 )); then
    filled_blocks=3
  elif (( percent >= 20 )); then
    filled_blocks=2
  elif (( percent >= 10 )); then
    filled_blocks=1
  else
    filled_blocks=0
  fi

  empty_blocks=$((10 - filled_blocks))

  # Build brightness bar manually
  filled_bar=""
  i=0
  while (( i < filled_blocks )); do
    filled_bar+="█"
    ((i++))
  done

  empty_bar=""
  i=0
  while (( i < empty_blocks )); do
    empty_bar+="░"
    ((i++))
  done

  brightness_bar="$filled_bar$empty_bar"

  # Determine color
  if (( percent < 30 )); then
    color="#bf616a"  # Red for low brightness
  elif (( percent < 50 )); then
    color="#ebcb8b"  # Yellow for medium brightness
  else
    color="#a3be8c"  # Green for high brightness
  fi

  # Determine icon
  if (( percent == 0 )); then
    icon="󰃞"  # Fully dimmed
  elif (( percent < 50 )); then
    icon="󰃟"  # Low brightness
  else
    icon="󰃠"  # High brightness
  fi

  # Output the final status
#  echo "<b>[ $percent% $icon <span foreground='$color'>{$brightness_bar}</span> ]</b>"

echo "<span font_size='10pt'><b>$percent% $icon <span foreground='$color'>{$filled_bar$empty_bar}</span></b></span>"
  sleep 0.1
done

