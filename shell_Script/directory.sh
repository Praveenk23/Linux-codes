#!/bin/bash
for i in {1..100};
do
	mkdir test$i
	echo "This is file$i" > test$i/file$i 
done
