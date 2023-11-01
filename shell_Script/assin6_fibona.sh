#!/bin/bash

n=$1
function fibonacci() {
	a=0
	b=1

	if [ $n == 1 ];then
		echo "$a"
		exit;
	fi

	if [ $n == 2 ];then
		echo -n "$a"
		echo "$b"
		exit
	fi

	echo -n "$a"
	echo -n "$b"

	i=3
	while true; do
		c=$((a+b))
		echo -n "$c"
		a=$b
		b=$c
		i=$((i+1))
		if [[ $i -gt $n ]];then
			break;
		fi
		done
