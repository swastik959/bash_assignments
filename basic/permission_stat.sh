#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No file path provided."
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="$1"

if [ ! -e "$file_path" ]; then
    echo "Error: File does not exist."
    exit 1
fi

permissions=$(stat -c "%A" "$file_path")

echo "Owner: Read-$([ "${permissions:1:1}" == "r" ] && echo "Yes" || echo "No"), Write-$([ "${permissions:2:1}" == "w" ] && echo "Yes" || echo "No"), Execute-$([ "${permissions:3:1}" == "x" ] && echo "Yes" || echo "No")"
echo "Group: Read-$([ "${permissions:4:1}" == "r" ] && echo "Yes" || echo "No"), Write-$([ "${permissions:5:1}" == "w" ] && echo "Yes" || echo "No"), Execute-$([ "${permissions:6:1}" == "x" ] && echo "Yes" || echo "No")"
echo "Others: Read-$([ "${permissions:7:1}" == "r" ] && echo "Yes" || echo "No"), Write-$([ "${permissions:8:1}" == "w" ] && echo "Yes" || echo "No"), Execute-$([ "${permissions:9:1}" == "x" ] && echo "Yes" || echo "No")"
