#!/usr/bin/env bash

# set fallback wallpaper
if [[ $(fd . ~/.config/i3/wallpapers) ]]; then
  wallpapers=~/.config/i3/wallpapers
else
  wallpapers=~/.config/i3/image-not-found-.png
fi

# apply wallpaper and generate theme
wal --recursive -i $wallpapers

# reload oomox theme
# exec_always --no-startup-id sleep 2 && themix-multi-export ~/.config/oomox/export_config/multi_export_deault.json
# exec_always --no-startup-id sleep 2 && xrdb ~/.Xresources_themes/oomox-xresources-reverse

# reload pywal themes
~/.config/polybar/wal-polybar.py -t ~/.config/polybar/config.template

# reload firefox
pywalfox update

# reload tmux
[[ $(tmux info) ]] && tmux source-file ~/.config/tmux/tmux.conf
