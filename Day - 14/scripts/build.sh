#!/bin/bash

docker build -t shared-library-demo:v1 app

docker images | grep shared-library-demo
