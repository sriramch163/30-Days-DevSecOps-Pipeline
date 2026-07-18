# Docker Versioning Commands

docker compose up -d

docker build -t flask-demo:1.0.0 app

docker tag flask-demo:1.0.0 localhost:5000/flask-demo:1.0.0

docker tag flask-demo:1.0.0 localhost:5000/flask-demo:latest

docker push localhost:5000/flask-demo:1.0.0

docker push localhost:5000/flask-demo:latest

curl http://localhost:5000/v2/_catalog

curl http://localhost:5000/v2/flask-demo/tags/list

pytest tests

kubectl apply -f kubernetes/
