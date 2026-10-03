#!/bin/bash

read -p "Enter the number: " num

factorial() {
    if [[ $num -eq 0 ]]; then
        echo "The factorial of $num is: 1"
    else
        n=1
        result=1

        while [ $n -le $num ]
        do
            (( result *= n ))
            (( n++ ))
        done

        echo "The factorial of $num is: $result"
    fi
}

factorial
