#!/bin/bash
MAX=$(cat /sys/class/backlight/amdgpu_bl1/max_brightness)
while true; do
    VAL=$(cat /sys/class/backlight/amdgpu_bl1/brightness)
    echo $((VAL * 100 / MAX))
    inotifywait -qq -e modify /sys/class/backlight/amdgpu_bl1/brightness 2>/dev/null
done
