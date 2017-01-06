#!/bin/bash

POSX=0
POSY=0
CHAR='@'
DIRECTION=0

function move {
  ( sleep 0.5  && kill -ALRM $$ ) &

  case "$DIRECTION" in
  0)
    POSY=$(($POSY - 1))
    ;;
  1)
    POSY=$(($POSY + 1))
    ;;
  2)
    POSX=$(($POSX + 1))
    ;;
  3)
    POSX=$(($POSX - 1))
    ;;
  esac

  tput cup $POSY $POSX
  printf "%b" $CHAR  
}

clear

# Set to cursor to be invisible
echo -e "\033[?25l"

trap move ALRM
move

while :
do
  read -s -n 3 key
  case "$key" in
  $'\e[A')
    DIRECTION=0
    ;;
  $'\e[B')
    DIRECTION=1
    ;;
  $'\e[C')
    DIRECTION=2
    ;;
  $'\e[D')
    DIRECTION=3
    ;;
  esac   
done
