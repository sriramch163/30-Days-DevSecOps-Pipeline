#!/bin/bash

kubectl apply -f falco/

kubectl rollout status daemonset/falco -n falco
