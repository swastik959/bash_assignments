#!/bin/bash

mkdir -p test_logs
echo -e "Error: Something went wrong\nInfo: All good\nError: Critical failure" > test_logs/file1.log
echo -e "Info: Initialization complete\nError: Network unreachable" > test_logs/file2.log

echo "Test .log files created in 'test_logs':"
tree test_logs

