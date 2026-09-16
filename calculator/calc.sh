#!/bin/bash

echo "Calculator- git based project"

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the operator: " op

case $op in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        if [ $num2 -eq 0 ]; then
            echo "Cannot divide by zero"
            exit 1
        fi
        result=$((num1 / num2))
        ;;
esac

echo "Result: $result"
echo "Calculation complete"
