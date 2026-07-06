#!/bin/bash

IMAGE_NAME=devsecops-flask:v2

echo "Starting Container..."

docker run -d \
--name flask-prod \
-p 5000:5000 \
--env-file app/.env.example \
$IMAGE_NAME

echo ""
echo "Container Started"

docker ps
