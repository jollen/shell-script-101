#!/bin/bash

exec 6<&0

exec < $1

exec 0<&10 10<&-