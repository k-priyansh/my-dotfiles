#!/bin/bash

# Kill existing Polybar instances
killall -q polybar

# Wait for the processes to be killed
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar mybar &



#/home/kpriyansh/.config/autostart/polylaunch.sh
