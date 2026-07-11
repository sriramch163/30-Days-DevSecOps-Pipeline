#!/bin/bash

docker stop jenkins-flask 2>/dev/null || true
docker rm jenkins-flask 2>/dev/null || true

docker run -d \
--name jenkins-flask \
-p 5000:5000 \
jenkins-flask:v1

echo ""

docker ps
