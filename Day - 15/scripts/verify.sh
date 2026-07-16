#!/bin/bash

echo "Docker Containers"

docker ps

echo ""

echo "SonarQube"

docker ps | grep sonarqube || true

echo ""

echo "Jenkins"

docker ps | grep jenkins || true
