#!/bin/bash

# This script attempts to process a list of files,
# but it has a subtle error related to word splitting.

files="file1.txt file2.txt file3.txt"

for file in $files; do
  echo "Processing: $file"
  # ... further processing of the file ...
  if [[ -f "$file" ]]; then
    echo "$file exists"
  fi
done