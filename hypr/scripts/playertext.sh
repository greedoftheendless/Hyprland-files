#!/bin/bash

while true; do
  song="$(playerctl metadata --format '{{ artist }} - {{ title }}' 2>/dev/null)"
  if [ -z "$song" ]; then
    echo "No Music Playing 🎵" >/tmp/playertext
  else
    echo "$song" >/tmp/playertext
  fi
  sleep 1
done
