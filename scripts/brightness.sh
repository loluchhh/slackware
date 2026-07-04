#!/bin/bash
echo "$(date) $1" >> /tmp/eww-brightness.log
MAX=$(cat /sys/class/backlight/amdgpu_bl1/max_brightness)
CUR=$(cat /sys/class/backlight/amdgpu_bl1/brightness)
STEP=$((MAX/20))

if [ "$1" = "up" ]; then
    NEW=$((CUR+STEP))
else
    NEW=$((CUR-STEP))
fi

[ $NEW -gt $MAX ] && NEW=$MAX
[ $NEW -lt 0 ] && NEW=0
echo $NEW > /sys/class/backlight/amdgpu_bl1/brightness
