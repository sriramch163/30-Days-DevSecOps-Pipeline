# Install Nexus

Start Services

docker compose up -d

Open Browser

http://localhost:8081

Default User

admin

Retrieve Initial Password

docker exec nexus \
cat /nexus-data/admin.password

Change Password

Create Repositories

Ready for Jenkins Integration
