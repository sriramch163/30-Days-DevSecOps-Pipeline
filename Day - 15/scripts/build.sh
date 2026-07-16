#!/bin/bash

docker build -t sonarqube-demo:v1 app

docker images | grep sonarqube-demo
