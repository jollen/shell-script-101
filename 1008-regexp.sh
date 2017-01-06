#!/bin/bash

STRING=${1}
#shopt -s nocasematch

if [[ "$STRING" =~ ^([a-z]) ]]; then  
    echo "$STRING is OK"; 
else 
    echo "$STRING is Fail"; 
fi