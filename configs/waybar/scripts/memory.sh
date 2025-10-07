#!/usr/bin/env bash



while true; do
  # Get memory usage info
  mem_total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
  mem_available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
  mem_used=$(( mem_total - mem_available ))
  percent=$(( mem_used * 100 / mem_total ))

  # Determine filled blocks manually (out of 10)
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

  # Build memory bar manually
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

  # Determine color (similar style to brightness)
  if (( percent < 30 )); then
    color="#a3be8c"  # Green for low memory used (good)
  elif (( percent < 70 )); then
    color="#ebcb8b"  # Yellow for medium usage
  else
    color="#bf616a"  # Red for high usage (warning)
  fi

  # Icon for memory (like your brightness icons, scaled)
  icon="󰍛"

  # Output with font size span (adjust 10pt or what you want)
  echo "<span font_size='10pt'><b>[ $percent% $icon <span foreground='$color'>{$filled_bar$empty_bar}</span> ]</b></span>"

  sleep 0.5
done


