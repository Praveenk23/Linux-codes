#!/bin/bash
echo "1. Make a file.
2. Display contents
3. Copy the file
4. Rename the file
5. Delete the file
6. Exit"

read -p "Enter your option: " ops

if [[ $ops == "1" ]];then
	read -p "Enter the file name: " filename
	if [[ -e $filename ]] && [[ -f $filename ]];then
		echo "Error: file exits"
	else
		cat > $filename
	fi
elif [[ $ops == "2" ]]; then
	read -p "Enter the file name: " filename
	cat $filename
elif [[ $ops == "3" ]]; then
	read -p "Enter the file name: " filename
	read -p "Enter the file name: " newfilename

	cp $filename $newfilename

elif [[ $ops == "4" ]]; then
	read -p "Enter the file name: " filename
	read -p "Enter the new file name: " newfilename
	mv $filename $newfilename
elif [[ $ops == "5" ]]; then
	read -p "Enter the file name: " newfilename
	rm $newfilename
else
	exit
fi
