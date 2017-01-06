#!/bin/bash

read -n3 key

if [ "$key" = $'\e[A' ]; then
	echo "Up....."
fi

exit 0
