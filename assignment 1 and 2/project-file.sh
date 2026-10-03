#!/bin/bash

read -p "Enter the file name: " file

result=$(find / -name "$file" 2>/dev/null)

if [ -z "$result" ]; then
    echo "The file does not exist on the device"
else
    echo "The file exists in the following path(s): "
    echo "$result"

    if [ -x "$result" ]; then
        echo "Permission Status: $file is executable"
    fi

    if [ -w "$result" ]; then
        echo "Permission Status: $file is writable"
    fi

    if [ -r "$result" ]; then
        echo "Permission Status: $file is readable"
    fi
fi
