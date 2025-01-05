#!/bin/bash

# Print a number greater than 100 or not

# get the number from user
# check if the number is greater than 100 or not
# if greater than 100 than print number is greater than 100
# else print number is less than 100

# Get number from user
#echo "Enter a number : "
#read NUMBER

NUMBER=$1

# check if the number is greater than 100 or not
# -gt, -lt, -eq, -ge, -le 
if [ $NUMBER -gt 100 ]
then
    echo "Number ${NUMBER} is greater than 100"
else
    echo "Number ${NUMBER} is less than 100"
fi
