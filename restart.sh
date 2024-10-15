#!/bin/bash

echo "Copying server mods"
if [ -d "./data/server/nogui/mods" ]; then
  cp -r ./mods ./data/server/nogui
else
  echo "No server mods found"
fi

echo "Restarting server"
bash deploy.sh