#!/bin/bash
# The function takes an ip as its argument and echos HOST UP if the ping test succeeds and HOST DOWN if it fails
function check_connect()
{
if [[ "$#" -lt 1 ]]; then
	echo "This Program requires atlease on argument" # if no argument is given
	exit 0
fi
PING=`ping -c 3 $1`
if [[ "$?" -eq 0 ]]; then
	echo "HOST UP"
else
	echo "HOST DOWN"
fi
}
check_connect $1
