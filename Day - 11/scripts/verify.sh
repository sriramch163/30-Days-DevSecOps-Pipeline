#!/bin/bash

echo "Running Containers"

docker ps

echo ""

echo "Docker Images"

docker images

echo ""

echo "Jenkins Status"

docker ps | grep jenkins || true
