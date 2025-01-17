#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

dir_path="$1"

if [ ! -d "$dir_path" ]; then
  echo "Error: Not a valid directory."
  exit 1
fi

file_count=$(find "$dir_path" -type f | wc -l)
dir_count=$(find "$dir_path" -type d | wc -l)

echo "Files: $file_count, Subdirectories: $((dir_count - 1))"

