#!/bin/bash

DOCKER_USERNAME=YOUR_DOCKER_USERNAME

docker push ${DOCKER_USERNAME}/devsecops-flask:v1.0.0
docker push ${DOCKER_USERNAME}/devsecops-flask:latest

echo "Images Pushed Successfully"
