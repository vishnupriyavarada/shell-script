#!/bin/bash

# Addition of two numbers. User must give number1 and number 2

NUMBER1=$1
NUMBER2=$2

DATE=$(date)

echo "script executed at ..$DATE"

SUM=$(($NUMBER1+$NUMBER2))

echo "Addition of 2 numbers :: $SUM"