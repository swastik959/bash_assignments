#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <file_path> <size_threshold_in_kb>"
  exit 1
fi

file_path="$1"
threshold="$2"

if [ ! -e "$file_path" ]; then
  echo "Error: File does not exist."
  exit 1
fi

file_size=$(du -k "$file_path" | awk '{print $1}')

if ((file_size > threshold)); then
  echo "File size: ${file_size} KB. Warning: Exceeds threshold of ${threshold} KB!"
else
  echo "File size: ${file_size} KB. Within threshold."
fi

