#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: writer.sh /tmp/aesd/assignment1/sample.txt ios"
    exit 1
fi

write_file="$1"
write_str="$2"

# Create the directory if it doesn't exist
mkdir -p "$(dirname "$write_file")"

echo "$write_str" > "$write_file"

if [ $? -ne 0 ]; then
    echo "Error: Failed to create the file '$write_file'."
    exit 1
fi

echo "File '$write_file' created successfully with content '$write_str'."
