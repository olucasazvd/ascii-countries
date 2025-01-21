#!/bin/bash
# Convert all PNG files in the countries_png directory to ASCII art
# Create a new directory to store the ASCII art files
cp -r countries_png/* countries_ascii/
# Convert all PNG files to ASCII art
find "countries_ascii" -type f -name "*.png" -exec sh -c 'ascii-image-converter "$1" -W 32 -b > "${1%.png}.txt"' _ {} \;
# Remove the original PNG files
find "countries_ascii" -type f -name "*.png" -exec rm -f {} \;

