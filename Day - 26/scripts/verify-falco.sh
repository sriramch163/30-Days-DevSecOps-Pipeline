#!/bin/bash

mkdir -p reports

kubectl get daemonset -n falco \
> reports/daemonset.txt

kubectl get pods -n falco \
> reports/pods.txt

kubectl logs daemonset/falco \
-n falco \
--tail=50 \
> reports/runtime-events.txt || true

echo "Falco Verification Completed"
