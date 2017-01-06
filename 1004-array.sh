#!/bin/bash

lists=(
	'Apple <apple@fruits.com>'
	'Banana <banana@fruits.com>'
	'Cherry <cherry@fruits.com>'
	'Durian <durian@fruits.com>'
	'Egg <egg@fruits.com>'
)

count=0

while [ "x${lists[count]}" != "x" ]; do
   echo ${lists[count]}
   count=$(($count + 1))   
done