# Jenkins Commands

docker compose up -d

docker ps

docker logs jenkins

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

docker restart jenkins

docker compose down

docker build -t jenkins-flask:v1 app

pytest tests

docker images
