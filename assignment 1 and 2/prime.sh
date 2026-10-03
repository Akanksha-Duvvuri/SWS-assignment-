#!/bin/bash

read -p "Enter the number: " num

prime() {
    if [[ $num -lt 2 ]]; then
        return 1
    fi

    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            return 1
        fi
    done

    return 0
}

prime

if [ $? -eq 0 ]; then
    echo "$num is prime"
else
    echo "$num is not prime"
fi
