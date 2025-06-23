#!/usr/bin/env bash

PICTURE=`shuf -n1 -e \`fd . /home/$USER/.config/i3/EndeavourOS-HD-Wallpaper | grep -v "README.md"\``
# -e ignores empty password
# -n dont fork process
i3lock -i $PICTURE -e -n

# dual monitor fix
sleep 0.1 && i3-msg restart # or restart

# resume workspace
sleep 0.1 && i3-msg workspace "1: "
