#!/bin/bash

log_file="disk_space_warnings.log"

df -h | awk 'NR>1 {if ($5+0 > 80) print $1, $5}' | while read -r partition usage; do
  echo "Warning: $partition usage is at $usage" >> "$log_file"
done

echo "Monitoring completed. Check $log_file for warnings."

