#!/bin/bash


printf "\n\nStopping docker image with name '$1'\n"
docker ps -a | awk '{ print $1,$2 }' | grep $1 | awk '{ print $1 }' | xargs -I {} docker stop {}
printf "\n\nBuilding docker image with name '$1'\n"
docker build ./ -t $1
printf "\nDocker image with name '$1' built\n"
printf "\n\nRuning docker image with name '$1' on port $2\n"
docker run -t -v $PWD/src:/app/src -p $2:80 -e PORT=$2 $1 