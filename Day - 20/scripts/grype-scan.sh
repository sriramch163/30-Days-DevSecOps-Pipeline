#!/bin/bash

mkdir -p reports

echo "Scanning Docker Image..."

grype flask-demo:1.0.0 \
-o table \
> reports/grype-image.txt

echo "Scanning SBOM..."

grype sbom:reports/sbom-spdx.json \
-o json \
> reports/grype-sbom.json

grype sbom:reports/sbom-spdx.json \
-o sarif \
> reports/grype.sarif

echo "Scan Completed"
