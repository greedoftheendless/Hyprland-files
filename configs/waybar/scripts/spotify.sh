#!/bin/sh

status=$(playerctl --player=spotify status 2>/dev/null)

if [[ "$status" == "Playing" ]] || [[ "$status" == "Paused" ]]; then
    title=$(playerctl --player=spotify metadata title)
    echo "$title"
else
    echo ""
fi
