#!/bin/bash

key_file_and_dir=("docker-compose.yml" "Dockerfile"  "common" "model" "web")
current_dir=$(pwd)

for item in "${key_file_and_dir[@]}"; do
    if [ ! -e "$current_dir"/"$item" ]; then
        echo "Error: $item not found in the current directory"
        exit 1
    fi
done

# Install docker
echo "Start to update apt-get and install docker"
sudo apt-get update
sudo apt-get install -y docker.io docker-compose

# Start docker
echo "Start to start docker service"
docker-compose build
docker-compose up -d