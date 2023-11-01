
#!/bin/bash

echo "Enter the password"

read pass

c=`echo ${#pass}`
if [[ $c -le "8" ]];then
	echo "Invalid password"
	exit
fi
echo $pass | grep "[a-z]" | grep "[A-Z]"|grep "[@#$%^&*!]"

if [[ $? -ne "0" ]];then
	echo "Password weak"
	exit
else
	echo "Strong password"
	exit
fi
