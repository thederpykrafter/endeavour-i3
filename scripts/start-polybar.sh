#!/usr/bin/env bash

MONITORS=$(xrandr | grep " connected" | wc -l)
[[ $(pgrep polybar | wc -l) == $MONITORS ]] && exit 0

# just in case
[[ $(pgrep polybar) ]] && killall -q polybar

# make sure polybar is killed first
while [[ $(pgrep -x polybar) ]]; do sleep 1; done

# laptop bar
polybar laptop 2>&1 | tee -a /tmp/polybar.log &
disown

# tv bar
[[ $(xrandr | grep "HDMI-1-0") ]] && polybar tv 2>&1 | tee -a /tmp/polybar.log &
disown
