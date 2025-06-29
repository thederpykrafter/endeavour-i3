#!/usr/bin/env bash

# set fallback wallpaper
if [[ $(fd . ~/.config/i3/wallpapers) ]]; then
  wallpapers=~/.config/i3/wallpapers
else
  wallpapers=~/.config/i3/image-not-found-.png
fi

# apply wallpaper and generate theme
wal -i $wallpapers -a "0.8"

# reload pywal themes
~/.config/polybar/wal-polybar.py -t ~/.config/polybar/config.template

# reload firefox
pywalfox update

# reload tmux
[[ $(tmux info) ]] && tmux source-file ~/.config/tmux/tmux.conf
