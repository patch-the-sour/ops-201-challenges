#!/bin/bash/
files=("dir1" "dir2" "dir3" "dir4")
mkdir ${files[@]}
touch "${files[0]}/demo.txt"
touch "${files[1]}/demo.txt"
touch "${files[2]}/demo.txt"
touch "${files[3]}/demo.txt"
