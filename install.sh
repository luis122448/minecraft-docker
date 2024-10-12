#!/bin/bash

# Define the environment variables file path
ENV_FILE=".env"

# Create environment variables file if it doesn't exist
if [ ! -f "$ENV_FILE" ]; then
    echo "Creating environment variables file: $ENV_FILE"
    touch "$ENV_FILE"
    
    # Environment variables
    cat <<EOF > ".env"
EULA=true
SERVER_NAME="La Mantita Server"
SERVER_PORT=25565
VERSION=1.17.1
MODE=survival
DIFFICULTY=hard
ALLOW_CHEATS=false
MAX_PLAYERS=20
ONLINE_MODE=false
CLOUDFLARE_TUNNEL_TOKEN=
EOF
else
    echo "Environment variables file already exists: $ENV_FILE"
fi

# Delete directories
rm -rf /var/www/minecraft-server/volumens/minecraft-server-docker/data
rm -rf /var/www/minecraft-server/volumens/minecraft-server-cloudflare/config

# Create directories
mkdir -p /var/www/minecraft-server/volumens/minecraft-server-docker/data
mkdir -p /var/www/minecraft-server/volumens/minecraft-server-cloudflare/config