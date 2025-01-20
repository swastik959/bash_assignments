#!/bin/bash

cpu_threshold=80
memory_threshold=80

cpu_usage=$(top -bn1 | awk '/Cpu/ {print $2}' | cut -d'.' -f1)
memory_usage=$(free | awk '/Mem/ {printf "%.0f", $3/$2 * 100}')

if ((cpu_usage > cpu_threshold)); then
  echo "High CPU usage: $cpu_usage%" >> health_log.log
fi

if ((memory_usage > memory_threshold)); then
  echo "High memory usage: $memory_usage%" >> health_log.log
fi

echo "Server health logged in health_log.log"

