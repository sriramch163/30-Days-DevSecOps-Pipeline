#!/bin/bash

IMAGE_NAME=devsecops-flask:v2

echo "Building Docker Image..."

docker build -t $IMAGE_NAME ./app

echo ""
echo "Docker Image Created Successfully"

docker images | grep devsecops-flask
