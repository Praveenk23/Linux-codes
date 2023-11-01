#!/bin/bash

echo "Enter size(N):"
read N

i=1
max=0

echo "Enter Numbers"
while [ $i -le $N ]
do
	read num
	if [ $i -eq 1 ];then   #set first number as max
		max=$num
	else                 #form number 2 update max if the num > max
		if [ $num -gt $max ];then
			max=$num
		fi
	fi
	i=$((i+1))   #increment i by 1
done

echo "Largest number: " $max

