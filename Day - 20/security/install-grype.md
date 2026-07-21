# Install Grype

Linux

curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh

Verify

grype version

Scan Image

grype flask-demo:1.0.0

Scan SBOM

grype sbom:sbom-spdx.json

Supported Outputs

- table
- json
- sarif
