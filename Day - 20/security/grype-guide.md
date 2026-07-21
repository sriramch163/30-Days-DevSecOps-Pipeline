# What is Grype?

Grype is an open-source vulnerability scanner.

It scans:

- Docker Images
- OCI Images
- Filesystems
- SBOMs

Grype compares installed packages against
known vulnerability databases and reports CVEs.

Typical Workflow

Docker Image

↓

Syft

↓

SBOM

↓

Grype

↓

Security Report
