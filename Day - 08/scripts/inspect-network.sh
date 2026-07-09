#!/bin/bash

echo "Docker Networks"

docker network ls

echo ""

echo "Inspecting dev-network"

docker network inspect dev-network
