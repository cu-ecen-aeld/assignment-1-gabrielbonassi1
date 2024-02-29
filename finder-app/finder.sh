#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: finder.sh /tmp/aesd/assignment1 linux"
    exit 1
fi

files_dir="$1"
search_str="$2"

if [ ! -d "$files_dir" ]; then
    echo "Error: '$files_dir' is not a directory."
    exit 1
fi

matching_lines=$(grep -r "$search_str" "$files_dir" | wc -l)

num_files=$(find "$files_dir" -type f | wc -l)

echo "The number of files are $num_files and the number of matching lines are $matching_lines"
