#!/bin/bash

IMAGE_NAME=jenkins-flask:v1

echo "Building Docker Image..."

docker build -t ${IMAGE_NAME} ./app

echo ""

docker images | grep jenkins-flask
