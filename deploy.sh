#!/bin/bash
# Description: Deploy the application

# Restar Tunnel SSH
# ssh -N -R -i "./ssh/key.pem" 25565:localhost:25565 ubuntu@18.117.251.203

# Stop the application
sudo docker compose down

# Pull the latest changes
# sudo git pull origin main

# Build and run the application
sudo docker compose up --build --force-recreate --no-deps -d
