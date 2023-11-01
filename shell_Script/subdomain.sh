#!/bin/bash
figlet "Sub-Enum" | lolcat -a
while read sub;do
	if host "$sub.facebook.com" &> /dev/null;then
		echo "$sub.google.com : Alive"
	fi
done < subs.txt

