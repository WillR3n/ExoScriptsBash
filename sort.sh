#!/bin/bash 

for param in "$@"; do 
	echo "$param"
done | sort | tr '\n' ' '

echo "" 


