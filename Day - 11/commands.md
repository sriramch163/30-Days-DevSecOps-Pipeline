# Jenkins + GitHub Commands

docker compose up -d

docker logs jenkins

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

git add .

git commit -m "Updated Project"

git push origin main

docker build -t github-flask:v1 app

pytest tests
