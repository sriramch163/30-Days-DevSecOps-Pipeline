#!/bin/bash

echo "Cleaning Containers..."

docker stop flask-prod 2>/dev/null || true
docker rm flask-prod 2>/dev/null || true

echo "Removing Images..."

docker rmi devsecops-flask:v2 2>/dev/null || true

echo "Cleanup Completed"
