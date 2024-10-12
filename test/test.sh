#!/bin/bash
# Description: Testing IP address and port

# Open the port
sudo ufw allow 80

# Stop the application
sudo docker compose down

# Build and run the application
sudo docker compose -f ./test/docker-compose.yml up --build --force-recreate --no-deps -d
