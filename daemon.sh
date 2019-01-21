#!/bin/sh

# Start RStudio (Basic Command)
docker run --rm -d -p 8787:8787 -e PASSWORD=none --name rstudio thedarktrumpet/rstudiojava

docker kill rstudio

# Start RStudio (Simple, with state available)
docker run --rm -d -p 8787:8787 -e PASSWORD=none -v$PWD:/home/rstudio --name rstudio thedarktrumpet/rstudiojava

docker kill rstudio

# Start RStudio (Multiple Maps)
docker run --rm -d -p 8787:8787 -e PASSWORD=none -v$PWD/src:/home/rstudio/src -v$PWD/.rstudio:/home/rstudio/.rstudio --name rstudio thedarktrumpet/rstudiojava