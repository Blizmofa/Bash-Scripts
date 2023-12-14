#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <dir_path>"
fi

DIR="$1"

du -sh "$DIR"

