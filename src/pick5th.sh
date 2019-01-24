#!/bin/sh

while read line
do
    if [ $(($line % 5)) -eq 0 ]
    then
        printf "$line\n"
    fi
done < "${1:-/dev/stdin}"
