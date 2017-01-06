#!/bin/bash

username="jollen"

nums=(0 1 2 3 4 5)

nums[0]=10

declare -r PI=3.1415926

echo "$username"

echo "${nums[0]}"

echo "$PI"

echo "Length of username: ${#username}"

echo "Substring of username: ${username:1:2}"

echo "user is: ${user:=john}"

exit 0