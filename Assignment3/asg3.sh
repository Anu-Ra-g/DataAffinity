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

# Read the input file, extract and save Scheme Name and Net Asset Value
cat "$input_file" | while IFS=";" read -r scheme_code isin_div isin_growth scheme_name net_asset_value date
do
  if [ "$scheme_code" != "Scheme Code" ]; then
    echo -e "$scheme_name\t$net_asset_value" >> "$output_file"
  fi
done 

# Remove empty lines from the output file
sed -i '/^\s*$/d' "$output_file"

echo "Data extracted. Output saved in $output_file file"
