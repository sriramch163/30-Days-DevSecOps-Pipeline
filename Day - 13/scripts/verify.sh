#!/bin/bash

echo "Running Containers"

docker ps

echo ""

echo "Docker Images"

docker images

echo ""

echo "Jenkins"

docker ps | grep jenkins || true
