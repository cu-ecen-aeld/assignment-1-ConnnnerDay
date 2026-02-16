#!/bin/bash

writefile="$1"
writestr="$2"

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: writefile and writestr must be specified"
    exit 1
fi

dirpath=$(dirname "$writefile")

mkdir -p "$dirpath" || {
    echo "Error: could not create directory $dirpath"
    exit 1
}

echo "$writestr" > "$writefile" || {
    echo "Error: could not write to $writefile"
    exit 1
}
