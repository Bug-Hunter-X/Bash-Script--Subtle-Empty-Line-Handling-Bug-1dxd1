#!/bin/bash

# This script demonstrates a robust solution to process files with empty lines.
# The IFS variable is correctly set, ensuring that only space is treated as a word separator, preventing unexpected behavior.

input_file="data.txt"

while IFS=' ' read -r line; do
  # Robust handling of empty lines
  if [[ -z "$line" ]]; then
    echo "Skipping empty line"
    continue
  fi
  echo "Processing line: $line"
  # Add your processing logic here
done < "$input_file"