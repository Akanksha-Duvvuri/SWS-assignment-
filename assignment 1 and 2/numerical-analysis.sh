#!/bin/bash

read -p "Enter the first number: " num_1
read -p "Enter the second number: " num_2

comparison() {
    if [[ $num_1 -gt $num_2 ]]; then
        echo "$num_1 is greater than $num_2"
    elif [[ $num_2 -gt $num_1 ]]; then
        echo "$num_2 is greater than $num_1"
    else
        echo "$num_1 is equal to $num_2"
    fi
}

comparison

addition() {
    echo "Sum of the numbers is: $((num_1 + num_2))"
}

addition

validation() {
    if [[ "$num_1" =~ ^[0-9]+$ ]]; then
        echo "$num_1 is a valid integer"
    else
        echo "Error: '$num_1' is not a valid integer"
    fi

    if [[ "$num_2" =~ ^[0-9]+$ ]]; then
        echo "$num_2 is a valid integer"
    else
        echo "Error: '$num_2' is not a valid integer"
    fi
}

validation

division() {
    if [[ $num_2 -eq 0 ]]; then
        echo "A number cannot be divided by 0"
    else
        echo "$num_1 divided by $num_2 is: $((num_1 / num_2))"
    fi
}

division
