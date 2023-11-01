#!/bin/bash
read -p "Enter the file: " a
if [[ ! -z $a ]]; then
	echo "not empty"
else
	echo "empty"
fi
