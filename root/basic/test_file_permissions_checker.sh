#!/bin/bash

touch file1.txt
chmod 644 file1.txt

touch file2.txt
chmod 755 file2.txt

touch file3.txt
chmod 600 file3.txt

echo "Test files created with varying permissions:"
ls -l file*.txt

