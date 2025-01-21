#!/bin/bash

mkdir -p test_perms
touch test_perms/file1.txt
touch test_perms/file2.txt
chmod 600 test_perms/file1.txt
chmod 666 test_perms/file2.txt

echo "Test files created in 'test_perms' with varying permissions:"
ls -l test_perms

