#!/bin/bash

IMAGE_NAME=devsecops-flask:v4

docker stop flask-volume 2>/dev/null || true
docker rm flask-volume 2>/dev/null || true

docker volume create flask-data

docker run -d \
--name flask-volume \
-v flask-data:/data \
-p 5000:5000 \
$IMAGE_NAME

echo ""
echo "Container Started"

docker ps
