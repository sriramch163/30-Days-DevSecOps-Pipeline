#!/bin/bash

echo "Docker Images"

docker images

echo ""

echo "Syft Version"

syft version

echo ""

echo "Generated Reports"

ls -lh reports
