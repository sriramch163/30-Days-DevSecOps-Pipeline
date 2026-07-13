#!/bin/bash

IMAGE_NAME=multibranch-demo
TAG=v1.0.0

docker build -t ${IMAGE_NAME}:${TAG} app

docker images | grep ${IMAGE_NAME}
