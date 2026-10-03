#!/bin/bash

read -p "Enter the directory: " directory

if [ -d "$directory" ]; then

    found=0

    for file in "$directory"/*.txt
    do
        if [ -f "$file" ]; then
            echo "$(basename "$file")"
            found=1
        fi
    done

    if [ $found -eq 0 ]; then
        echo "No .txt files found"
    fi

    echo
    echo "Top 5 Largest files in the directory"

    find "$directory" -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 5

else
    echo "Error: Directory does not exist"
fi
