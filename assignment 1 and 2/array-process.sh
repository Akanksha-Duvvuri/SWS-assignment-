#!/bin/bash

read -p "Enter the list of names separated by spaces: " -a names

echo "Full array: ${names[@]}"

reverse_array() {
    local array=("$@")
    n=${#array[@]}

    for (( i=n-1; i>=0; i-- ))
    do
        reverse+=("${array[i]}")
    done

    echo "Reversed array: ${reverse[@]}"
}

reverse_array "${names[@]}"
