#!/bin/bash

#Create a script that detects if a file or directory exists, then creates it if it does not exist.
#Your script must use at least one array, one loop, and one conditional.

#array
files=(filered.txt fileblue.txt fileorange.txt filepurple.txt)

#for loop

for file in "${files[@]}"

do

    #If conditional to check if file exist

    if [[ -f "$files" ]];

    then
        echo"$file already exists"
    else
        echo "$file does not exist"

        touch $files

        echo "$file has been created"
    fi

done       
