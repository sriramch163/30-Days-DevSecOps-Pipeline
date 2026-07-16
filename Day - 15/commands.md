# SonarQube Commands

docker compose up -d

docker ps

docker logs sonarqube

sonar-scanner \
-Dproject.settings=sonarqube/sonar-project.properties

pytest tests

docker build -t sonarqube-demo:v1 app

kubectl apply -f kubernetes/

kubectl get pods
