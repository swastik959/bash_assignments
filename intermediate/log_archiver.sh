#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

dir_path="$1"
if [ ! -d "$dir_path" ]; then
  echo "Error: Not a valid directory."
  exit 1
fi

find "$dir_path" -type f -name "*.log" -mtime +7 -exec tar -rvf archived_logs.tar {} \; -exec rm -f {} \;

echo "Logs older than 7 days archived into archived_logs.tar"

