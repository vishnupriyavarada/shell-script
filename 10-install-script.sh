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

 if [$USERID -ne 0]
 then
    echo "ERROR: You must have sudo/root user access to execute this script"
 fi

 dnf install mysql -y
