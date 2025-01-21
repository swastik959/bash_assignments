#!/bin/bash

mkdir -p test_symlinks
touch test_symlinks/valid_target.txt
ln -s valid_target.txt test_symlinks/valid_symlink
ln -s invalid_target.txt test_symlinks/broken_symlink

echo "Test directory 'test_symlinks' created with symlinks:"
ls -l test_symlinks

