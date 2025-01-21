#!/bin/bash

mkdir -p test_dir/subdir1
mkdir -p test_dir/subdir2


touch test_dir/file1.txt
touch test_dir/file2.txt
touch test_dir/subdir1/file3.txt

echo "Test directory 'test_dir' created with subdirectories and files:"
tree test_dir

