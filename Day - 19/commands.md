# Syft Commands

docker build -t flask-demo:1.0.0 app

syft flask-demo:1.0.0

syft flask-demo:1.0.0 -o table

syft flask-demo:1.0.0 -o json

syft flask-demo:1.0.0 -o spdx-json

syft flask-demo:1.0.0 -o cyclonedx-json

pytest tests

kubectl apply -f kubernetes/
