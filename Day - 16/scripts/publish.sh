#!/bin/bash

docker tag \
flask-demo:1.0.0 \
localhost:8082/flask-demo:1.0.0

docker push \
localhost:8082/flask-demo:1.0.0
