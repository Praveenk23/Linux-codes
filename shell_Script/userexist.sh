#!/bin/bash
read -p "Enter username: " username
id $username &> /dev/null
if [[ $? == "0" ]]; then
	id $username
else
	useradd $username
fi
