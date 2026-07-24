# Cosign Commands

cosign version

COSIGN_PASSWORD="" cosign generate-key-pair

COSIGN_PASSWORD="" cosign sign \
--key cosign.key flask-demo:1.0.0

COSIGN_PASSWORD="" cosign verify \
--key cosign.pub flask-demo:1.0.0

docker build -t flask-demo:1.0.0 app

pytest tests

kubectl apply -f kubernetes/
