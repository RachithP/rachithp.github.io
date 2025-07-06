#!/bin/bash

mkdir -p tn/assets

for file in assets/**/*.{jpg,png}; do
    if [ -f "$file" ]; then
        output_file="tn/$file"
        mkdir -p "$(dirname "$output_file")"
        magick "$file" -thumbnail 160x160 "$output_file"
    fi
done
