#!/bin/bash

IMAGE_NAME=devsecops-flask
TAG=v1.0.0

echo "Building Docker Image..."

docker build -t ${IMAGE_NAME}:${TAG} ./app

echo ""
echo "Image Created Successfully"

docker images | grep ${IMAGE_NAME}
