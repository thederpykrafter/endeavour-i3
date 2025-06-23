#!/usr/bin/env bash

set -e

cd ~/Dev/bash/
KINGSTON='/run/media/thederpykrafter/KINGSTON'
if [ -d $KINGSTON ]; then
  zip -FSr $KINGSTON/universal-setup.zip universal-setup | \
    while read OUTPUT; do
    dunstify -i backup -t 10000 -r 666666 -u normal "Universal-Setup Backup" "$OUTPUT"
  done
  printf "\e[%dm%s\e[m\n" 94 'Universal-Setup Backup Complete!'
fi
