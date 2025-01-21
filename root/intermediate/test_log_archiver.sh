#!/bin/bash


mkdir -p test_logs
touch test_logs/recent.log
touch -t 202401010000 test_logs/old.log

echo "Test logs created in 'test_logs':"
ls -l test_logs

