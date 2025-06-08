#!/usr/bin/env bash

# use nvidia-smi to query gpu usage

usage=`nvidia-smi --query-gpu=utilization.memory --format=csv,noheader`

echo $usage | sed 's/ //'
