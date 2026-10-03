#!/bin/bash

read -p "Enter the marks of students separated by spaces: " -a studentMarks

for mark in "${studentMarks[@]}"
do
    if [[ "$mark" =~ ^[0-9]+$ ]] && [ "$mark" -le 100 ]; then
        if [ "$mark" -ge 90 ]; then
            grade="A"
        elif [ "$mark" -ge 75 ]; then
            grade="B"
        elif [ "$mark" -ge 50 ]; then
            grade="C"
        else
            grade="Fail"
        fi

        echo "Mark: $mark -> Grade: $grade"
    else
        echo "Invalid mark: $mark"
        exit 1
    fi
done
