#!/bin/bash

echo "Docker Images"

docker images

echo ""

echo "Kubernetes Resources"

kubectl get all || true

echo ""

echo "Jenkins"

docker ps | grep jenkins || true
