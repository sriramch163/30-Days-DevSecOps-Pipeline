# Docker Commands

docker build -t devsecops-flask:v2 ./app

docker run -d -p 5000:5000 devsecops-flask:v2

docker ps

docker images

docker inspect devsecops-flask:v2

docker history devsecops-flask:v2

docker logs flask-prod

docker stop flask-prod

docker rm flask-prod

docker rmi devsecops-flask:v2

docker compose up -d

docker compose down
