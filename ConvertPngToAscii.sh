#!/bin/bash
# Convert all PNG files in the pngs/ directory to ASCII arts
# Create a new directory to store the ASCII art files
cp -r pngs/* ascii/
# Convert all PNG files to ASCII art
find "ascii" -type f -name "*.png" -exec sh -c 'ascii-image-converter "$1" -W 32 -b > "${1%.png}.txt"' _ {} \;
# Remove the original PNG files
find "ascii" -type f -name "*.png" -exec rm -f {} \;

