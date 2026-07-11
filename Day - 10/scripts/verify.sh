#!/bin/bash

echo "Docker Version"
docker --version

echo ""
echo "Docker Containers"
docker ps

echo ""
echo "Docker Images"
docker images

echo ""
echo "Jenkins Container"

docker ps | grep jenkins || true
