# Docker Commands

docker build -t devsecops-flask ./app

docker images

docker run -d -p 5000:5000 devsecops-flask

docker ps

docker stop <container-id>

docker rm <container-id>

docker rmi devsecops-flask
