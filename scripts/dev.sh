#!/bin/bash

docker build ./ -t $1
docker run -t -e app_env=$2 -e PORT=$3 $1