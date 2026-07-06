#!/bin/bash

echo "Docker Images"

docker images

echo ""
echo "Running Containers"

docker ps

echo ""
echo "Image History"

docker history devsecops-flask:v2 || true

echo ""
echo "Image Inspect"

docker inspect devsecops-flask:v2 || true
