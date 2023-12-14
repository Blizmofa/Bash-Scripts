#!/bin/bash

MAX=$(grep -o '^cpu[[:space:]]*[0-9]*' /proc/cpuinfo | awk '{ max += $NF } END { print max }')
EMAIL="server@127.0.0.1"

USE=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print int(usage)}')

echo "Current CPU Usage: $USE%"

if [ $USE -gt $MAX ]; then
    echo "Running out of CPU power! Sending email notification."
    echo "Percent used: $USE" | mail -s "High CPU Usage Warning" $EMAIL

elif [ $USE -eq $MAX ]; then
    echo "CPU usage is at the maximum threshold."
else
    echo "CPU usage is within acceptable limits."
fi
