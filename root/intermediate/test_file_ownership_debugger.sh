#!/bin/bash

mkdir -p test_dir
touch test_dir/file1.txt
touch test_dir/file2.txt

sudo chown root test_dir/file1.txt

echo "Test data created in 'test_dir'. Files:"
ls -l test_dir

