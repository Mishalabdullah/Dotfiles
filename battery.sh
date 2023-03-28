#!/bin/bash

percent=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage:" | awk '{ print $2 }')
Volume=$(amixer sget Master | grep Front  | awk '{print $5 }' | sed -n 2p)
date=$(date  +"%A,%B %d,%H:%M:%S" )
bright=$(light -G)
echo " 🗓️:$date 🔋: $percent:🔊$Volume:☀️ $bright"
