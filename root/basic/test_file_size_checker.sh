#!/bin/bash

truncate -s 100K small_file.txt
truncate -s 1M large_file.txt

echo "Test files created with varying sizes:"
ls -lh small_file.txt large_file.txt

