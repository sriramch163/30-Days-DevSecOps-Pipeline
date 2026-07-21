#!/bin/bash

mkdir -p reports

syft flask-demo:1.0.0 \
-o spdx-json=reports/sbom-spdx.json

echo "SBOM Generated"
