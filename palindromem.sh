





































 


















#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage: $0 <non-negetive-integer>"
		exit 1
fi		 
n="$1"
if ! [[ $n =~ ^[0-9]+$ ]]; then
	echo "Must be a non negetive integer."
	exit 1
fi

orig="$n"
rev=0
while [ "$n" -gt 0 ]; do
	rev=$(( rev*10 + (n%10) ))
	n=$(( n/10 ))	
done
[ "$orig" -eq "$rev" ] && echo $orig "is palindromem." || echo $orig "is not a palindrmem."	
