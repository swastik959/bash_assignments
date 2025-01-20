#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <search_string> <directory_path>"
  exit 1
fi

search_string="$1"
dir_path="$2"

if [ ! -d "$dir_path" ]; then
  echo "Error: Not a valid directory."
  exit 1
fi

grep -rnw "$dir_path" -e "$search_string" --include="*.log"

