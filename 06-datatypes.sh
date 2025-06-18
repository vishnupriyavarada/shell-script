#!/bin/bash

# Addition of two numbers. User must give number1 and number 2

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date)

echo "script executed at ..$TIMESTAMP"

SUM=$(($NUMBER1+$NUMBER2))

echo "Addition of 2 numbers :: ${SUM}"

echo "list of files :: $(ls -l | wc -l)" # wc - word count. Counts the number files in the current folder