#!/bin/bash

# Get the input filename, with or without .pdf extension
input="$1"

# Strip .pdf if it's present
base="${input%.pdf}"

echo $base
# Set input and output filenames
input_pdf="$base.pdf"
output_svg="$base.svg"

# Run pdf2svg
pdf2svg "$input_pdf" "$output_svg"
