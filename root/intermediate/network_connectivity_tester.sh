#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <ip_list_file>"
  exit 1
fi

ip_list="$1"
if [ ! -e "$ip_list" ]; then
  echo "Error: IP list file does not exist."
  exit 1
fi

while IFS= read -r ip; do
  if ping -c 1 "$ip" &>/dev/null; then
    echo "$ip: Reachable"
  else
    echo "$ip: Unreachable"
  fi
done < "$ip_list"

