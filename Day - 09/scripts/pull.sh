#!/bin/bash

DOCKER_USERNAME=YOUR_DOCKER_USERNAME

docker pull ${DOCKER_USERNAME}/devsecops-flask:v1.0.0

docker images
