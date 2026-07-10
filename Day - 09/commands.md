# Docker Registry Commands

docker login

docker logout

docker build -t devsecops-flask:v1.0.0 .

docker tag devsecops-flask:v1.0.0 USER/devsecops-flask:v1.0.0

docker tag devsecops-flask:v1.0.0 USER/devsecops-flask:latest

docker push USER/devsecops-flask:v1.0.0

docker push USER/devsecops-flask:latest

docker pull USER/devsecops-flask:v1.0.0

docker images

docker image inspect IMAGE_NAME
