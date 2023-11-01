#!/bin/bash

cmd1=$(whoami)
cmd2=$(id -u $cmd1)
echo "Welcome $cmd1 : $cmd2"

echo "1. Add User
2. List number of Items in users home dir
3. Check Permission
4. List Processes
5. Exit"
read -p "Enter your option: " opt
if [[ $opt == "1" ]]; then
	read -p "Enter the name of the user: " username
	sudo useradd $username
elif [[ $opt == "2" ]]; then
	ls ~/
elif [[ $opt == "3" ]]; then
	ls -l ~/
elif [[ $opt == "4" ]]; then
	ps
elif [[ $opt == "5" ]]; then
	exit
else
	echo "Invalid option!!!"
fi

