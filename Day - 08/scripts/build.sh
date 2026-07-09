#!/bin/bash

IMAGE_NAME=devsecops-flask:v5

echo "Building Docker Image..."

docker build -t $IMAGE_NAME ./app

echo ""
echo "Image Created Successfully"

docker images | grep devsecops-flask
