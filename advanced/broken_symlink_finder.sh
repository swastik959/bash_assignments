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

find "$dir_path" -xtype l -exec ls -l {} \; > broken_symlinks.log

echo "Broken symlinks logged in broken_symlinks.log"
