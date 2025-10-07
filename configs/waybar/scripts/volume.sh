#!/usr/bin/env bash

while true; do
  volume_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
  volume=$(echo "$volume_info" | awk '{print $2}')
  muted=$(echo "$volume_info" | grep -o "\[MUTED\]")

  # Calculate percent manually using if branches
  percent=0
  if (( $(echo "$volume >= 1.0" | bc -l) )); then
    percent=100
  elif (( $(echo "$volume >= 0.95" | bc -l) )); then
    percent=95
  elif (( $(echo "$volume >= 0.9" | bc -l) )); then
    percent=90
  elif (( $(echo "$volume >= 0.85" | bc -l) )); then
    percent=85
  elif (( $(echo "$volume >= 0.8" | bc -l) )); then
    percent=80
  elif (( $(echo "$volume >= 0.75" | bc -l) )); then
    percent=75
  elif (( $(echo "$volume >= 0.7" | bc -l) )); then
    percent=70
  elif (( $(echo "$volume >= 0.65" | bc -l) )); then
    percent=65
  elif (( $(echo "$volume >= 0.6" | bc -l) )); then
    percent=60
  elif (( $(echo "$volume >= 0.55" | bc -l) )); then
    percent=55
  elif (( $(echo "$volume >= 0.5" | bc -l) )); then
    percent=50
  elif (( $(echo "$volume >= 0.45" | bc -l) )); then
    percent=45
  elif (( $(echo "$volume >= 0.4" | bc -l) )); then
    percent=40
  elif (( $(echo "$volume >= 0.35" | bc -l) )); then
    percent=35
  elif (( $(echo "$volume >= 0.3" | bc -l) )); then
    percent=30
  elif (( $(echo "$volume >= 0.25" | bc -l) )); then
    percent=25
  elif (( $(echo "$volume >= 0.2" | bc -l) )); then
    percent=20
  elif (( $(echo "$volume >= 0.15" | bc -l) )); then
    percent=15
  elif (( $(echo "$volume >= 0.1" | bc -l) )); then
    percent=10
  elif (( $(echo "$volume >= 0.05" | bc -l) )); then
    percent=5
  else
    percent=0
  fi

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

