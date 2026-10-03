#!/bin/bash

read -p "Enter the number: " num

sum_of_digits() {
    sum=0

    until (( num == 0 ))
    do
        digit=$((num % 10))
        (( sum += digit ))
        (( num /= 10 ))
    done

    echo "Sum of all the digits is: $sum"
}

sum_of_digits
