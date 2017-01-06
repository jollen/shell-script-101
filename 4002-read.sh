#!/bin/bash

echo "User register program."

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your age and press [ENTER]: "
read -n 3 age
echo

echo "$name is $age years old."