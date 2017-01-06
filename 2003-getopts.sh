#!/bin/bash

options="";

while getopts ":abc" option; do
    case "${option}" in
        a) options="n";;
        b) options="b";;
        c) options="c";;
        \?) options="Invalid option (-${OPTARG})";;
    esac
done

echo $options