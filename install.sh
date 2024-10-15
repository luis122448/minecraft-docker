#!/bin/bash

ENV_FILE=".env"
ENV_FILE_BAK=".env.bak"

echo "Backing up environment variables file: $ENV_FILE_BAK"
cp -r "$ENV_FILE" "$ENV_FILE_BAK" &&

rm -rf "$ENV_FILE" &&

echo "Creating environment variables file: $ENV_FILE"
touch "$ENV_FILE" &&

# Environment variables
cat <<EOF > ".env"
# Important: This file is used by docker-compose.yml
EULA=true
SERVER_NAME="La Mantita Server"
SERVER_PORT=25565
VERSION=1.20.1

# Modpack
TYPE=CURSEFORGE
CF_SERVER_MOD=/data/mods/server.zip
CF_BASE_DIR=/data

# Rcon
ENABLE_RCON=true
RCON_PASSWORD=***

# Server properties
MODE=survival
DIFFICULTY=hard
ALLOW_CHEATS=true
MAX_PLAYERS=20
ONLINE_MODE=false
USER_SERVER=***
IP_SERVER=***
EOF

echo "Backing up data directory"
chmod +x ./backup.sh &&
./backup.sh &&

sudo docker compose down &&

rm -rf ./data &&

echo "Zipping server mods"
mkdir -p ./data/mods &&
zip -r ./data/mods/server.zip ./server &&

cp -r ./mods/server.zip ./data/mods/server.zip