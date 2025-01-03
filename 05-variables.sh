#!/bin/bash/

echo " Please enter your name :: " # text entered here will be added as value to variable

read USERNAME # Here USERNAME is variable name and when user enter's name, the value is assigned to USERNAME.                 

echo "User name entered : " $USERNAME

echo "Please enter your Password :: " 

read -s PASSWORD  #-s is used to hide the data entered by user

echo "Password entered is : " $PASSWORD