#!/usr/bin/env bash

PICTURE=/tmp/i3lock.png
SCREENSHOT="scrot -z $PICTURE"

BLUR="5x4"

$SCREENSHOT
convert $PICTURE -blur $BLUR $PICTURE

# -e ignores empty password
# -p "default" shows cursor
i3lock -i $PICTURE -e -n
rm $PICTURE

# dual monitor fix
sleep 0.1
i3-msg restart
