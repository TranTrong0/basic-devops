#!/bin/bash

docker stop web || true
docker rm web || true
docker build -t devops-basic .
docker run -d -p 8080:80 --name web devops-basic

