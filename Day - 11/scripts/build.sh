#!/bin/bash

echo "Building Application"

docker build -t github-flask:v1 app

docker images | grep github-flask
