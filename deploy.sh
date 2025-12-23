#!/bin/bash
set -e

IMAGE = devops-basic
NAME = web
PORT = 8080

docker build -t $IMAGE .

docker stop $NAME || true
docker rm $NAME || true
docker run -d -p $PORT:80 --restart unless-stopped --name $NAME $IMAGE 

