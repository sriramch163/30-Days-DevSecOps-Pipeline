#!/bin/bash

echo "Docker Images"
docker images

echo ""
echo "Running Containers"
docker ps

echo ""
echo "Image History"
docker history devsecops-flask:v3 || true

echo ""
echo "Image Details"
docker inspect devsecops-flask:v3 || true
