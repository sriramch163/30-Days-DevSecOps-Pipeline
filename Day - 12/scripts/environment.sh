#!/bin/bash

export ENVIRONMENT=dev
export VERSION=v1.0.0
export BUILD_NUMBER=1

echo "Environment Variables Loaded"
env | grep -E 'ENVIRONMENT|VERSION|BUILD_NUMBER'
