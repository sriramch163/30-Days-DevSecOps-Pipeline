# Grype Commands

docker build -t flask-demo:1.0.0 app

syft flask-demo:1.0.0 -o spdx-json=reports/sbom-spdx.json

grype flask-demo:1.0.0

grype flask-demo:1.0.0 -o table

grype sbom:reports/sbom-spdx.json

grype sbom:reports/sbom-spdx.json -o json

grype sbom:reports/sbom-spdx.json -o sarif

pytest tests

kubectl apply -f kubernetes/
