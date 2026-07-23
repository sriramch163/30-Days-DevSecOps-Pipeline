#!/bin/bash

mkdir -p reports

echo "Running Docker Scout Quick View..."

docker scout quickview \
flask-demo:1.0.0 \
> reports/scout-quickview.txt

echo "Generating Recommendations..."

docker scout recommendations \
flask-demo:1.0.0 \
> reports/scout-recommendations.txt

echo "Scanning CVEs..."

docker scout cves \
flask-demo:1.0.0 \
> reports/scout-cves.txt

echo "Docker Scout Analysis Completed"
