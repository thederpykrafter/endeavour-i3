#!/usr/bin/env bash

MONITORS=$(xrandr | grep " connected" | wc -l)
if [[ $(pgrep polybar | wc -l) == $MONITORS ]]; then
  ~/.config/polybar/wal-polybar.py -t ~/.config/polybar/config.template
  polybar-msg cmd restart && exit 0
fi

# reload firefox
[[ $(pgrep firefox) ]] && pywalfox update

# reload tmux
[[ $(tmux info) ]] && tmux source-file ~/.config/tmux/tmux.conf

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
