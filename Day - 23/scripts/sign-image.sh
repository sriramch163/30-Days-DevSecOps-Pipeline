#!/bin/bash

COSIGN_PASSWORD="" \
cosign sign \
--key keys/cosign.key \
flask-demo:1.0.0

echo "Image Signed"
