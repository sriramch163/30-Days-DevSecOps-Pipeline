#!/bin/bash

IMAGE_NAME=devsecops-flask

echo "Building Docker Image..."

docker build -t $IMAGE_NAME ./app

echo "Docker Image Built Successfully"
