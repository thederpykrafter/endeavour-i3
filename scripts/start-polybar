#!/usr/bin/env bash

MONITORS=$(xrandr --query | grep " connected" | cut -d" " -f1)
MONITOR_COUNT=$(echo $MONITORS | wc -l)
BARS=$(pgrep polybar | wc -l)
if [[ $BARS == $MONITOR_COUNT ]]; then exit 0; fi

# just in case
killall -q polybar

# make sure polybar is killed first
while [[ $(pgrep -x polybar) ]]; do sleep 1; done

# laptop bar
polybar laptop 2>&1 | tee -a /tmp/polybar.log &
disown

# tv bar
[[ $(xrandr | grep "HDMI") ]] && polybar tv 2>&1 | tee -a /tmp/polybar.log &
disown
