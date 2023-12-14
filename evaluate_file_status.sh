#!/bin/bash
if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <file_pathj>"
	exit 1
fi

FILE="$1"

if [ -e "$FILE" ]; then
	if [ -f "$FILE" ]; then
		echo "$FILE is a regular file."
	fi	

	if [ -d "$FILE" ]; then
		echo "$FILE is a directory."
	fi

	if [ -r "$FILE" ]; then
		echo "$FILE is a readable."
	fi

	if [ -w "$FILE" ]; then
		echo "$FILE is a writable."
	fi

	if [ -x "$FILE" ]; then
		echo "$FILE is a executable/searchable."
	fi

else
	echo "$FILE does not exist."
	exit 1

fi
exit

