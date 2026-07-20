# Install Syft

Linux

curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh

Verify

syft version

Generate SBOM

syft flask-demo:1.0.0

Supported Formats

- table
- json
- spdx-json
- cyclonedx-json
