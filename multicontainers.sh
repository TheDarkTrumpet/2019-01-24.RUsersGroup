#!/bin/sh

# Individually Run (From interactive.sh as review)
docker run -v$PWD:/in -it ubuntu sh /in/src/genseq.sh


# Method 1 - Directly pipe from one to another
sh -c "docker run -v$PWD:/in -it ubuntu sh /in/src/genseq.sh" |

# Method 2 - Using a temporary storage location
docker run -v$PWD:/in -it ubuntu sh -c "stty -onlcr && /in/src/genseq.sh" > temp/sequence.txt
docker run -v$PWD:/in -it ubuntu sh -c "cat /in/temp/sequence.txt | /in/src/pick5th.sh"