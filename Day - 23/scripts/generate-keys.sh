#!/bin/bash

mkdir -p keys

COSIGN_PASSWORD="" \
cosign generate-key-pair \
--output-key-prefix keys/cosign

echo "Keys Generated"
