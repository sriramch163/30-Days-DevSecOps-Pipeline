#!/bin/bash

echo "Docker Images"

docker images

echo ""

echo "Registry"

curl http://localhost:5000/v2/_catalog

echo ""

echo "Tags"

curl http://localhost:5000/v2/flask-demo/tags/list
