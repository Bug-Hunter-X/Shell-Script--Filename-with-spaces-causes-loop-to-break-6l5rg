#!/bin/bash

# This script correctly processes a list of files,
# even if filenames contain spaces.

files="file1.txt file2.txt file3.txt file with spaces.txt"

# Use an array to correctly handle spaces in filenames
read -r -a files_array <<< "$files"

for file in "${files_array[@]}"; do
  echo "Processing: $file"
  # ... further processing of the file ...
  if [[ -f "$file" ]]; then
    echo "$file exists"
  fi
done