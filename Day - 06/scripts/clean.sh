#!/bin/bash

echo "Cleaning Docker Resources..."

docker stop flask-v3 2>/dev/null || true
docker rm flask-v3 2>/dev/null || true
docker rmi devsecops-flask:v3 2>/dev/null || true

echo "Cleanup Completed"
