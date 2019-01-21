#!/bin/sh

# This doesn't work, container has no understanding of src/genseq
docker run -it ubuntu sh src/genseq.sh

# Run the script inside the container (mounting)
docker run -v$PWD:/in -it ubuntu sh /in/src/genseq.sh

# ..but can also be read from std in, and write to std out:
cat src/genseq.sh|docker run -a stdin -a stdout -i ubuntu /bin/sh


# But how to write out....

# From Host Viewpoint
docker run -v$PWD:/in -it ubuntu sh /in/src/genseq.sh > temp/genseq.txt

# From Client Viewpoint
docker run -v$PWD:/in -it ubuntu sh -c "sh /in/src/genseq.sh > in/temp/genseq.txt"