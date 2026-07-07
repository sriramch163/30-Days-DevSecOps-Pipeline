#!/bin/bash

IMAGE_NAME=devsecops-flask:v3

docker stop flask-v3 2>/dev/null || true
docker rm flask-v3 2>/dev/null || true

docker run -d \
--name flask-v3 \
-p 5000:5000 \
--env-file app/.env.example \
$IMAGE_NAME

echo ""
echo "Container Started"

docker ps
