# Nexus Commands

docker compose up -d

docker ps

docker logs nexus

docker exec nexus \
cat /nexus-data/admin.password

docker login localhost:8082

docker tag flask-demo:1.0.0 \
localhost:8082/flask-demo:1.0.0

docker push localhost:8082/flask-demo:1.0.0

pytest tests

kubectl apply -f kubernetes/

kubectl get pods
