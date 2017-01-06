#!/bin/bash

exec <$1

if [ "$#" -gt 1 ]; then
		exec >$2
fi

count=0

while read LINE
do
    echo "$count: $LINE"
    ((count++))    
done
