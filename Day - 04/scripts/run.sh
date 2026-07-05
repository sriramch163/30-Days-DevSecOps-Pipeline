#!/bin/bash

IMAGE_NAME=devsecops-flask

echo "Running Docker Container..."

docker run -d \
-p 5000:5000 \
--name flask-container \
$IMAGE_NAME

echo "Container Started"
