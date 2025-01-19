#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi

log_file="$1"
if [ ! -e "$log_file" ]; then
  echo "Error: Log file does not exist."
  exit 1
fi

grep -i "error" "$log_file" | awk '{count[$0]++} END {for (msg in count) print count[msg], msg}' > error_summary.txt

echo "Error summary generated in error_summary.txt"

