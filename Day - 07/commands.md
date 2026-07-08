# Docker Volume Commands

docker volume ls

docker volume create flask-data

docker volume inspect flask-data

docker volume rm flask-data

docker run -v flask-data:/data IMAGE

docker run -v $(pwd)/data:/data IMAGE

docker compose up -d

docker compose down

docker volume prune

docker system df
