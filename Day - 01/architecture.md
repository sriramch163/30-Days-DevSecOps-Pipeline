# DevSecOps Architecture

                    Developer
                        │
                        ▼
                     GitHub
                        │
                        ▼
                     Jenkins
                        │
        ┌───────────────┼───────────────┐
        ▼               ▼               ▼
   Checkout         Unit Test      SonarQube
                        │
                        ▼
                 Docker Build
                        │
                        ▼
                SBOM Generation
                     (Syft)
                        │
                        ▼
                  Trivy Scan
                        │
                        ▼
                  Grype Scan
                        │
                        ▼
              Docker Hub / AWS ECR
                        │
                        ▼
                  Kubernetes
                        │
                        ▼
                  Prometheus
                        │
                        ▼
                    Grafana
