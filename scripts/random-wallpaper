#!/usr/bin/env bash

# set fallback wallpaper
if [[ $(fd . ~/.config/i3/EndeavourOS-HD-Wallpaper/) ]]; then
  wallpapers=~/.config/i3/EndeavourOS-HD-Wallpaper
else
  wallpapers=~/.config/i3/image-not-found-.png
fi

# apply wallpaper and generate theme
wal -i $wallpapers -a "0.8" --backend schemer

# reload pywal themes
~/.config/polybar/wal-polybar.py -t ~/.config/polybar/config.template
[[ $(tmux info) ]] && tmux source-file ~/.config/tmux/tmux.conf
pywalfox update
