#!/bin/bash

input_file="$1"

# Check if the input file exists
if [ ! -s "$input_file" ]; then
  echo "Input file not found: $input_file"
  exit 1
fi

output_file="output.tsv"

# Create the header in the output file
echo -e "Scheme Name\t\t\tNet Asset Value" > "$output_file"

# Use awk to process the input file and extract and save Scheme Name and Net Asset Value
awk -F ';' 'NR > 1 && $1 != "Scheme Code" { print $4 "\t" $5 }' "$input_file" >> "$output_file"


# Remove empty lines from the output file
sed -i '/^\s*$/d' "$output_file"

echo "Data extracted. Output saved in $output_file file"
