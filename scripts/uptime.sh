#!/usr/bin/env bash

# time_up=`uptime -p | awk -F'( |,|:)+' '{print $2,"d",$4,"h",$6,"m"}' | sed 's/ d/d/; s/ h/h/; s/ m/m/'`
# time_up=`uptime | sed 's/.*up \([^,]*\), .*/\1/'`
time_up=`uptime -p | sed 's/[up eeks ays inute our,]//g'`

printf "$time_up\n"
printf "$time_up\n"

if echo $time_up | grep "w" &> /dev/null; then
	printf "#FF0000\n"
	exit 33
elif echo $time_up | grep "[1-9]d" &> /dev/null; then
	printf "#FFFC00\n"
elif echo $time_up | grep "[8-23]h" &> /dev/null; then
	printf "#7199EE\n"
fi
