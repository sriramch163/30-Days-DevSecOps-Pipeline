#!/bin/bash

echo "Docker Images"

docker images

echo ""

echo "Trivy Version"

trivy --version

echo ""

echo "Reports"

ls -lh reports
