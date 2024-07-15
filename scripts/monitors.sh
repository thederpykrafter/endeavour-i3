#!/bin/bash

if cat /sys/class/net/enp8s0/operstate | grep "up" &> /dev/null; then
	xrandr --output HDMI-1-1 --left-of eDP-1 --auto
else
	xrandr --output HDMI-1-1 --right-of eDP-1 --auto
fi
