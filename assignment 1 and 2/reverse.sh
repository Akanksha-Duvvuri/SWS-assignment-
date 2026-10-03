#!/bin/bash

read -p "Enter the number: " num

reverse() {
    rev=0

    while (( num > 0 ))
    do
        digit=$((num % 10))
        rev=$((rev * 10 + digit))
        (( num /= 10 ))
    done

    echo "Reverse is: $rev"
}

reverse
