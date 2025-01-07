#!/bin/bash

 USERID=$(id -u)
 R="\e[31m"
 G="\e[32m"
 Y="\e[33m"
 N="\e[0m" # Normal colour white

 LOGS_FOLDER="/var/log/shell-scripts-log"
 LOGS_FILE=$(echo $0 | cut -d "." -f1)
 TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
 LOGS_FILE_NAME="${LOGS_FOLDER}/${LOGS_FILE}-${TIME_STAMP}.log"

 VALIDATE()
 {
    if [ $1 -ne 0 ]
    then
        echo -e "Installing $2... $R Failure $N"
        exit 1
    else 
        echo -e "Installing $2 ... $G Success $N"
    fi

 }

 echo "Scripted started executing at : ${TIME_STAMP}" &>>${LOGS_FILE_NAME}

 if [ $USERID -ne 0 ]
 then
    echo "ERROR: You must have sudo/root user access to execute this script"
    exit 1 # other than 0
 fi


for package in $@
do
    dnf list installed $package &>>$LOGS_FILE_NAME
        if [ $? -ne 0 ]
        then
            dnf install $package -y &>>$LOGS_FILE_NAME
            VALIDATE $? $package
        else
            echo -e " $package is $Y already installed $N "
        fi

done