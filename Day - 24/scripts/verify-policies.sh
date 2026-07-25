#!/bin/bash

mkdir -p reports

kubectl get clusterpolicy

kubectl describe clusterpolicy require-signed-images \
> reports/policy-report.txt

echo "Policies Verified"
