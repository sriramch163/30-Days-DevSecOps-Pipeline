#!/bin/bash

docker network connect dev-network flask-network

echo "Container Connected"

docker network inspect dev-network
