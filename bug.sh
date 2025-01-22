#!/bin/bash

# This script attempts to process a file, but it has a subtle error.
# The error is related to how the script handles empty lines and potential issues with the IFS variable.

input_file="data.txt"

while IFS= read -r line; do
  # Process each line
  if [[ -z "$line" ]]; then
    echo "Skipping empty line"
    continue
  fi
  echo "Processing line: $line"
  # Add your processing logic here
done < "$input_file"

# Potential issues:
# * Empty lines are not handled reliably if IFS is not set to space before read
# * This can lead to unexpected behavior if the file contains empty lines or lines with only spaces.