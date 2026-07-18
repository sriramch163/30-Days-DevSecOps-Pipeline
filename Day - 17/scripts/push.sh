#!/bin/bash

VERSION=1.0.0

docker push localhost:5000/flask-demo:${VERSION}

docker push localhost:5000/flask-demo:latest
