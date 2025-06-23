#!/usr/bin/env bash

waka_command=wakatime || wakatime-cli || echo -e "\e[91mNO WAKATIME CLI FOUND\e[m" && return 1

echo `$waka_command --today` | \
  sed 's/ mins/m/g; s/ secs/s/g; s/ hrs/h/g; s/Coding/󰈮/; s/Debugging//; s/Building/󰦑/; s/,//g; s/^$/No Activity/'

