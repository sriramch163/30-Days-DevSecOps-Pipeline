#!/bin/bash

helm repo add kyverno https://kyverno.github.io/kyverno/

helm repo update

kubectl create namespace kyverno || true

helm install kyverno kyverno/kyverno \
-n kyverno

kubectl get pods -n kyverno
