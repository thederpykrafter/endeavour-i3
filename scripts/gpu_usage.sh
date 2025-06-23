#!/usr/bin/env bash

# use nvidia-smi to query gpu usage

usage=`nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader`

echo $usage | sed 's/ //'
