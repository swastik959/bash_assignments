#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <directory_path> <username>"
  exit 1
fi

dir_path="$1"
username="$2"

if [ ! -d "$dir_path" ]; then
  echo "Error: Not a valid directory."
  exit 1
fi

find "$dir_path" ! -user "$USER" -exec ls -l {} \; > ownership_issues.log

echo "Ownership issues logged in ownership_issues.log"

