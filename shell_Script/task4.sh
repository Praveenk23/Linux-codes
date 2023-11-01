#!/bin/bash
read -p "Enter the command: " cmd
$cmd &> /dev/null

if [[ $? == "0" ]]; then
	echo "exist"
else
	echo "not exist"

fi

