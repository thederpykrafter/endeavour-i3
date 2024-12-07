#!/bin/bash

monitor="$(xrandr | grep "HDMI" | tail -n1 | cut -d " " -f1)"

if cat /sys/class/net/enp8s0/operstate | grep "up" &> /dev/null; then
	xrandr --output $monitor --right-of eDP-1 --auto
else
	xrandr --output $monitor --left-of eDP-1 --auto
fi
