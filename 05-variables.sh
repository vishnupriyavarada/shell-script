#!/bin/bash/

echo " Please enter your name :: " # text entered here will be added as value to variable

read -s USERNAME # Here USERNAME is variable name and when user enter's name, the value is assigned to USERNAME. 
                 #-s is used to hide the data entered by user

echo "User name entered : " $USERNAME