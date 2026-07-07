# Multi-Stage Docker Commands

docker build -t devsecops-flask:v3 ./app

docker images

docker history devsecops-flask:v3

docker inspect devsecops-flask:v3

docker run -d -p 5000:5000 devsecops-flask:v3

docker ps

docker logs flask-v3

docker stop flask-v3

docker rm flask-v3

docker compose up -d

docker compose down
