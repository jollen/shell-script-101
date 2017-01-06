#!/bin/bash

lists=(
`sed -n '/errors/p' /var/log/message`
)

count=0
while [ "x${lists[count]}" != "x" ]; do
   echo ${lists[count]}
   count=$(($count + 1))   
done

