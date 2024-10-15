#!/bin/bash

timestamp=$(date +"%d%m%Y-%H%M%S")

backup_dir="./backups"
mkdir -p "$backup_dir"

backup_file="$backup_dir/data-$timestamp.zip"

echo "Creating backup of /data at $backup_file"
zip -r "$backup_file" ./data

echo "Removing backups older than 30 days"
find "$backup_dir" -name "*.zip" -type f -mtime +30 -exec rm {} \;