#!/bin/bash

helm repo add falcosecurity \
https://falcosecurity.github.io/charts

helm repo update

kubectl create namespace falco || true

helm install falco falcosecurity/falco \
-n falco

kubectl get pods -n falco
