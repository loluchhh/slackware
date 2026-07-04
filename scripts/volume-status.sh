#!/bin/bash
~/.config/eww/scripts/volume.sh status
alsactl monitor | while read -r line; do
   ~/.config/eww/scripts/volume.sh status
done
