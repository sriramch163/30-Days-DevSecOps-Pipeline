#!/bin/bash

DOCKER_USERNAME=YOUR_DOCKER_USERNAME

docker tag devsecops-flask:v1.0.0 \
${DOCKER_USERNAME}/devsecops-flask:v1.0.0

docker tag devsecops-flask:v1.0.0 \
${DOCKER_USERNAME}/devsecops-flask:latest

echo "Images Tagged Successfully"
