#!/bin/bash

VERSION=1.0.0

docker build \
-t flask-demo:${VERSION} \
app

docker images | grep flask-demo
