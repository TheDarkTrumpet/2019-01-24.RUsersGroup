#!/bin/sh

# List Containers (pulled)
docker images

# List Running Containers
docker ps

# Remove specific container
docker rmi ubuntu

# Remove untaged containers
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")

# Prune all unused (dangling) images
docker image prune


# Pull a new image - Go to DockerHub
docker pull ubuntu