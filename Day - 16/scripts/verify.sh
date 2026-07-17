#!/bin/bash

echo "Docker Containers"

docker ps

echo ""

echo "Nexus"

docker ps | grep nexus || true

echo ""

echo "Docker Images"

docker images

echo ""

echo "Repositories"

curl http://localhost:8081
