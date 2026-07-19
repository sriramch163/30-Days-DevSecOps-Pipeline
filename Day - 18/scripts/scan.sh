#!/bin/bash

mkdir -p reports

trivy image \
--severity HIGH,CRITICAL \
--format table \
flask-demo:1.0.0

trivy image \
--format json \
-o reports/trivy-report.json \
flask-demo:1.0.0

trivy image \
--format table \
-o reports/trivy-report.txt \
flask-demo:1.0.0
