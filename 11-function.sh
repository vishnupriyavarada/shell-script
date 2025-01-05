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

 VALIDATE()
 {
    if [ $1 -ne 0 ]
    then
        echo "Installing $2... Failure"
        exit 1
    else 
        echo "Installing $2 ... Success"
    fi

 }

 if [ $USERID -ne 0 ]
 then
    echo "ERROR: You must have sudo/root user access to execute this script"
 fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo "mySQL is already installed"
 fi   

 dnf list installed git

 if [ $? -ne 0 ]
 then
    dnf install git -y
    VALIDATE $? "git"
 else
    echo "Git is already installed"
 fi


