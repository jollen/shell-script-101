#!/bin/bash

echo "Enter the filename:"

select FILENAME in `ls | sed -n '/^[[:digit:]]/p'`;
do
     echo "You picked $FILENAME."
done