#!/bin/bash

	echo "All variables you want:  $@"
	echo "Number of variables: $#"
	echo "To get script name: $0"
	echo "Present working directory: $PWD"
	echo "Home directory of the current user who is executing the script: $HOME"
	echo "Which user is running the script: $USER"
	echo "Process id of current script: $$"	
    sleep 60 & # sleep 60 - fore ground . sleep 60 & - back ground
    echo "Process id of last command in the background: $!"