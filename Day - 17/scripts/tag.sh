#!/bin/bash

VERSION=1.0.0

docker tag flask-demo:${VERSION} localhost:5000/flask-demo:${VERSION}

docker tag flask-demo:${VERSION} localhost:5000/flask-demo:latest
