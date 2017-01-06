#!/bin/bash

username=yes
num=100

if [ "$username" = yes ]; then
	echo "OK"
fi


if [ "$username" = yes ]; then
	echo "OK"
else
	echo "Fail"
fi

if [ "$username" != yes ]
then
	echo "Fail"
fi

[ "$username" = yes ] && echo "OK"

if [ $num -eq 100 ]; then 
	echo "Good" 
fi