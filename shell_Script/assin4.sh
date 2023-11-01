#!/bin/bash

#if[ "$#" -ne 3 ];then
if [[ "$#" -ne 3 ]];then
	echo "$0 <number1> <number2> <+,-,*,/>"
	exit
fi

n1=$1
n2=$2
op=$3

if [[ $op != "+" ]] && [[ $op != "-" ]] && [[ $op != "x" ]] && [[ $op != "/" ]];then
	echo "Invalid operator. Use '+','-','x' & '/'"
	exit
fi

if [[ $op = "+" ]];then
	res=$((n1 + n2))
elif [[ $op = "-" ]];then
	res=$((n1 - n2))
elif [[ $op = "x" ]];then
	res=$((n1 * n2))
elif [[ $op = "/" ]];then
	res=$((n1 / n2))
fi

echo "$n1 $op $n2 = $res"


