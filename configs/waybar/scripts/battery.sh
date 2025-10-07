#!/run/current-system/sw/bin/env bash

while true; do
  # Get battery device path (first battery found)
  battery_device=$(upower -e | grep 'BAT' | head -n1)

  # If no battery device found, print Unknown and wait
  if [ -z "$battery_device" ]; then
    echo "<span font_size='10pt'><b>Battery: Unknown</b></span>"
    sleep 5
    continue
  fi

  # Get battery information
  battery_info=$(upower -i "$battery_device")
  capacity=$(echo "$battery_info" | grep "percentage" | awk '{print $2}' | sed 's/%//')
  status=$(echo "$battery_info" | grep "state" | awk '{print $2}')

  # Determine icon based on status and capacity
  if [ "$status" = "charging" ]; then
    icon="󰂄"
  elif [ "$capacity" -gt 95 ]; then
    icon="󰁹"
  elif [ "$capacity" -gt 80 ]; then
    icon="󰂂"
  elif [ "$capacity" -gt 60 ]; then
    icon="󰂁"
  elif [ "$capacity" -gt 40 ]; then
    icon="󰁿"
  elif [ "$capacity" -gt 20 ]; then
    icon="󰁾"
  elif [ "$capacity" -gt 5 ]; then
    icon="󰁻"
  else
    icon="󰂎"
  fi

  # Build battery bar (10 blocks)
  filled_blocks=$((capacity / 10))
  empty_blocks=$((10 - filled_blocks))

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

  # Determine inline foreground color based on capacity
  if [ "$capacity" -lt 15 ]; then
    color="#f7768e"  # red
  elif [ "$capacity" -le 50 ]; then
    color="#e0af68"  # orange
  else
    color="#9ece6a"  # green
  fi

  # Output formatted string with inline foreground color and escaped percent
  echo -e "<span font_size='10pt' foreground='$color'><b>$capacity%% $icon $filled_bar$empty_bar</b></span>"

  sleep 5
done
