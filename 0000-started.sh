#!/bin/bash

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
color_prompt=yes

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]jollen\[\033[37m\]@\[\033[32m\]local\[\033[37m\]:\[\033[31m\]\w \[\033[36m\]\$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
