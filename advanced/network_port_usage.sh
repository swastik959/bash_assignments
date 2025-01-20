#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage: $0 <port_number>"
	exit 1
fi

port="$1"

pid=$(lsof -i:"$port" -t  2>/dev/null)

if [ -z "$pid" ]; then
	echo "Port $port is not in use."
else
 	echo "Port $port is in use by process ID $pid."
 	echo "Kill process with: kill -9 $pid"
fi


