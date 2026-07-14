#!/bin/bash

IMAGE=jenkins-secret-demo:v1

docker build -t ${IMAGE} app

docker images | grep jenkins-secret-demo
