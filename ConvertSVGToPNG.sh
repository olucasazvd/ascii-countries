#!/bin/bash
# Convert all SVG files in a directory to PNG
# Create a new directory to store the PNG files
cp -r svg-countries/* png-countries/
# Convert all SVG files to PNG with a width of 1024 pixels and a height of 1024 pixels using Inkscape
find "countries_png" -type f -name "*.svg" -exec sh -c 'inkscape -w 1024 -h 1024 "$1" -o "${1%.svg}.png"' _ {} \;
# Rename the PNG files to the name of the directory they are in
find "countries_png" -type f -name "*.png" -exec sh -c 'mv "$1" "$(dirname "$1")/$(basename "$(dirname "$1")").png"' _ {} \;
# Remove the original SVG files
find countries_png/ -type f -name "*.svg" -exec rm -f {} \;
