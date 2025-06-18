#!/bin/bash

MOVIES=("luckybhaskar" "amaran" "puspa2") # index starts from 0 and size of this movies array is 3
                                          # Here instead of one value you are storing multiple values. This is array

echo "First Movie : ${MOVIES[0]}"
echo "Second Movie : ${MOVIES[1]}"
echo "Third Movie : ${MOVIES[2]}"
echo "All movies in the variable MOVIES is : ${MOVIES[@]}"

echo "First Movie without {}: $MOVIES[0]"
echo "Second Movie without {}: $MOVIES[1]"
echo "Third Movie without {}: $MOVIES[2]"

echo "All movies in the variable MOVIES without {} is : $MOVIES[@]"