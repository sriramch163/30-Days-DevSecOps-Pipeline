#!/bin/bash

echo "Docker Images"
docker images

echo ""

echo "Cosign Version"
cosign version

echo ""

echo "Reports"
ls -lh reports

echo ""

echo "Keys"
ls -lh keys
