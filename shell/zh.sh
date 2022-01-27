#!/usr/bin/bash
echo "Starting the program at $(date)"
echo "The program $0 with $# arguments with pid $$"
echo "$*"
echo "$@"
for file in "$@"
do
	if [[ "$?" -ne 0 ]]
	then
	fi
done
foobar
