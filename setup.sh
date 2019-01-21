#!/bin/sh

# Because we ignore this directory, yet scripts need it.
mkdir temp

docker pull ubuntu
docker pull microsoft/dotnet
docker pull thedarktrumpet/rstudiojava
docker pull microsoft/mssql-server-linux