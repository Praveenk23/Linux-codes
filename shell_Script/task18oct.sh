#!/bin/bash
function help(){
	echo "-d DOMAIN (required): Provide domain as target"
	echo "-h/--help : help"
	echo "-w word list : Provide word list"
}

function run(){
	while read sub;do
		if host "$sub.$domain" &> /dev/null;then
			echo "$sub.$domain : Alive"
		fi
	done < $wordlist
}

for i in {1..2};do
case $1 in
	"-h"|"--help")
		help
		exit
		;;
	"-d")
		domain=$2
		if [[ -z $domain ]];then
			echo "Error: provide domain name."
			exit
		fi
		;;
	"-w")
		wordlist=$2
		if [[ -z $wordlist ]];then
			echo "Error: provide list of wordlist"
			exit
		fi
		;;
	*)
		echo "Error: invalid argument, user -h/--help"
		exit
		;;
esac
shift 2
done
run
