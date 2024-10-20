#!/bin/bash

key_file_and_dir=("docker-compose.yml" "Dockerfile" "requirements.txt" "common" "model" "web")
current_dir=$(pwd)

# Check if the required files and directories are present in the current directory
for item in "${key_file_and_dir[@]}"; do
    if [ ! -e "$current_dir"/"$item" ]; then
        echo "Error: $item not found in the current directory"
        exit 1
    fi
done

# Run the program
docker-compose up --build
