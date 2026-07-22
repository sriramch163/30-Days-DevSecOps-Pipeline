#!/bin/bash

echo "Docker Images"

docker images

echo ""

echo "Dependency Check Version"

dependency-check.sh --version

echo ""

echo "Generated Reports"

ls -lh reports
