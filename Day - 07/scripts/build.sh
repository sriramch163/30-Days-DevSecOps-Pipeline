#!/bin/bash

IMAGE_NAME=devsecops-flask:v4

echo "Building Image..."

docker build -t $IMAGE_NAME ./app

echo ""
echo "Image Created Successfully"

docker images | grep devsecops-flask
