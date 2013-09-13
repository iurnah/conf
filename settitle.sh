#!/bin/sh

echo -e "\033]2;$1 $2 $3 $4 $5 $6\007"

# usage: can passing string as an argument to the script to set the title bar
# of current terminal. For example:
# settitle.sh JUNOS-src
