#!/bin/bash
if [ "$1" = "up" ]; then
    amixer set Master 5%+
elif [ "$1" = "down" ]; then
    amixer set Master 5%-
elif [ "$1" = "status" ]; then
    echo "$(amixer get Master | awk -F'[][]' '/Front Left:/{print int($2)}')"
fi
