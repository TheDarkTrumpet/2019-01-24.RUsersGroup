#!/bin/sh

while read line
do
    if [ $(($line % 5)) -eq 0 ]
    then
        echo $line
    fi
done < "${1:-/dev/stdin}"
