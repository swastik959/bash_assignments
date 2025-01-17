#!/bin/bash


if [ $# -lt 2 ]; then
  echo "Usage: $0 <input_file> <output_file>"
  exit 1
fi

input_file="$1"
output_file="$2"

if [ ! -e "$input_file" ]; then
  echo "Error: Input file does not exist."
  exit 1
fi

sort "$input_file" | uniq -u | tee "$output_file"
echo "Duplicates removed. Output written to $output_file"

