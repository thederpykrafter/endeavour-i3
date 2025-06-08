#!/usr/bin/env bash

# use nvidia-smi to query gpu temp
temp=`nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader`

if (( $temp < 50 )); then
  label=''
elif (( $temp < 60 )); then
  label=''
elif (( $temp < 70 )); then
  label=''
elif (( $temp < 80 )); then
  label=''
else
  label=''
fi

echo $label $temp".0°C"
