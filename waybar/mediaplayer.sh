#!/bin/bash
player_status=$(playerctl --ignore-player=firefox status 2> /dev/null)
if [ "$player_status" = "Playing" ]; then
    echo "     $(playerctl --ignore-player=firefox metadata artist) - $(playerctl --ignore-player=firefox metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo "     $(playerctl --ignore-player=firefox metadata artist) - $(playerctl  --ignore-player=firefox metadata title)"
fi
