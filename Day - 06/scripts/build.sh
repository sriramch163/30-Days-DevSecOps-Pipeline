#!/bin/bash

IMAGE_NAME=devsecops-flask:v3

echo "Building Multi-Stage Docker Image..."

docker build -t $IMAGE_NAME ./app

echo ""
echo "Image Built Successfully"

docker images | grep devsecops-flask
