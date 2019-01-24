#!/bin/sh
# Taken from https://blog.eduonix.com/shell-scripting/generating-random-numbers-in-linux-shell-scripting/

RANDOM=$$
for i in `seq 100`
do
    echo $(($RANDOM%100))
done