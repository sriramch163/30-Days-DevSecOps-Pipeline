#!/bin/bash

echo "Docker Images"

docker images

echo ""

echo "Grype Version"

grype version

echo ""

echo "Generated Reports"

ls -lh reports
