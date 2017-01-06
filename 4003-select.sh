#!/bin/bash

echo "Enter the filename:"

select FILENAME in *;
do
     echo "You picked $FILENAME."
done