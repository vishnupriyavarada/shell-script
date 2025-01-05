#!/bin/bash

#	1. Check if the user running the script is root user or not
#	if root user 
#		allow him
#	else
#		show error properly and exit
          
#	run install command
	
#	2. check installation is success or not
	
#	if success
#		 our task is done
#	else
#throw the error message

#-------------------------------------------------------------

# Check if the user running the script is root user or not

 USERID=$(id -u)
 R="\e[31m"
 G="\e[32m"
 Y="\e[33m"

 VALIDATE()
 {
    if [ $1 -ne 0 ]
    then
        echo -e "Installing $2... $R Failure"
        exit 1
    else 
        echo -e "Installing $2 ... $G Success"
    fi

 }

 if [ $USERID -ne 0 ]
 then
    echo "ERROR: You must have sudo/root user access to execute this script"
    exit 1
 fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e " $Y mySQL is already installed"
 fi   

 dnf list installed git

 if [ $? -ne 0 ]
 then
    dnf install git -y
    VALIDATE $? "git"
 else
    echo -e " $Y Git is already installed"
 fi


