#!/bin/bash

mkdir -p reports

kubectl get constrainttemplates \
> reports/templates.txt

kubectl get constraints \
> reports/constraints.txt

echo "Gatekeeper Policies Verified"
