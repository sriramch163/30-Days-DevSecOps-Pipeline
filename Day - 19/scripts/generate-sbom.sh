#!/bin/bash

mkdir -p reports

syft flask-demo:1.0.0 \
-o table=reports/sbom.txt

syft flask-demo:1.0.0 \
-o spdx-json=reports/sbom-spdx.json

syft flask-demo:1.0.0 \
-o cyclonedx-json=reports/sbom-cyclonedx.json

echo "SBOM Generated Successfully"
