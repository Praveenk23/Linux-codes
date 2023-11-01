#!/bin/bash

echo "Enter ten values in the array: "
for((n=0; i<10; i++))
do
	read array[n];
done

even=0
odd=0

for((i=0; i<10; i++))
do
	if ((array[i]%2==0 ))
		then
			((even+=array[i]))
		else
			((odd+=array[i]))
	fi
done

echo "Sum of even number in the array is $even"
