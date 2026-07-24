#!/bin/bash

mkdir -p reports

COSIGN_PASSWORD="" \
cosign verify \
--key keys/cosign.pub \
flask-demo:1.0.0 \
> reports/signature-verification.txt

echo "Signature Verified"
