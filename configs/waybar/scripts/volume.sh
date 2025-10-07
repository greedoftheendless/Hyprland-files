#!/usr/bin/env bash

while true; do
  volume_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
  volume=$(echo "$volume_info" | awk '{print $2}')
  muted=$(echo "$volume_info" | grep -o "\[MUTED\]")

  percent=$(echo "scale=0; $volume * 100 / 1" | bc)

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

  # Build volume bar manually
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

  volume_bar="$filled_bar$empty_bar"

  # Determine color
  if [ "$muted" = "[MUTED]" ] || (( percent == 0 )); then
    color="#bf616a"
  elif (( percent < 50 )); then
    color="#ebcb8b"
  else
    color="#a3be8c"
  fi

  # Prepare output text
  if [ "$muted" = "[MUTED]" ]; then
    icon="󰝟"
    output="$empty_bar Muted"
  elif (( percent == 0 )); then
    icon="󰕿"
    output="$empty_bar"
  elif (( percent < 50 )); then
    icon="󰖀"
    output="$volume_bar"
  elif (( percent < 100 )); then
    icon="󰕾"
    output="$volume_bar"
  else
    icon="󰕾"
    output="██████████"
  fi

  #echo "<b>[ $percent% $icon <span foreground='$color'>{$output}</span> ]</b>"
  
echo "<span font_size='9pt'><b>[ $percent% $icon <span foreground='$color'>{$output}</span> ]</b></span>"
  sleep 0.1
done

