#!/bin/bash

IMAGE_NAME=devsecops-flask:v4

docker stop flask-bind 2>/dev/null || true
docker rm flask-bind 2>/dev/null || true

docker run -d \
--name flask-bind \
-v $(pwd)/data:/data \
-p 5001:5000 \
$IMAGE_NAME

echo "Bind Mount Container Started"
