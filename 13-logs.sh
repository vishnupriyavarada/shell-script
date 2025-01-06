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
 LOGS_FOLDER="/var/log/shell-scripts-log/"
 LOGS_FILE=$(echo $0 | cut -d "." f1)
 TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
 LOGS_FILE_NAME="${LOGS_FOLDER}/${LOGS_FILE}-${TIME_STAMP}.log"

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

 echo "Scripted started executing at : ${TIME_STAMP}" &>>${LOGS_FILE_NAME}

 if [ $USERID -ne 0 ]
 then
    echo "ERROR: You must have sudo/root user access to execute this script"
    exit 1
 fi

dnf list installed mysql &>>${LOGS_FILE_NAME}

if [ $? -ne 0 ]
then
    dnf install mysql -y &>>${LOGS_FILE_NAME}
    VALIDATE $? "mysql"
else
    echo -e " mySQL is already $Y  installed" 
 fi   

 dnf list installed git &>>${LOGS_FILE_NAME}

 if [ $? -ne 0 ]
 then
    dnf install git -y &>>${LOGS_FILE_NAME}
    VALIDATE $? "git"
 else
    echo -e " Git is already $Y installed"
 fi


