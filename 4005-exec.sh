#!/bin/bash

exec 1 > message.log

exec 2 > /dev/null

exec & > /dev/null

exec 1 >&10

exec 0<&10

exec 6<&10

exec 10<&-

exec < $1

exec 0<&10 10<&-