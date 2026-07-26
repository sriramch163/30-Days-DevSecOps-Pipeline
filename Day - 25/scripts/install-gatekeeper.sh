#!/bin/bash

helm repo add gatekeeper \
https://open-policy-agent.github.io/gatekeeper/charts

helm repo update

kubectl create namespace gatekeeper-system || true

helm install gatekeeper gatekeeper/gatekeeper \
-n gatekeeper-system

kubectl get pods -n gatekeeper-system
