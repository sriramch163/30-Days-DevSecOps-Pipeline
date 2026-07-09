#!/bin/bash

IMAGE_NAME=devsecops-flask:v5

docker stop flask-network 2>/dev/null || true
docker rm flask-network 2>/dev/null || true

docker network inspect dev-network >/dev/null 2>&1 || \
docker network create dev-network

docker run -d \
--name flask-network \
--network dev-network \
-p 5000:5000 \
$IMAGE_NAME

echo ""
echo "Container Started"

docker ps
