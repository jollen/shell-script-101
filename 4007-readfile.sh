#!/bin/bash

exec < $1

count=0

while read LINE
do
    ((count++))
    echo $LINE
done

echo "Number of lines: $count"

