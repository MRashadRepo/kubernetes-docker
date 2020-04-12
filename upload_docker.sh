#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=rashaddocker26/flask-app:latest

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="rashaddocker26"
docker login
docker tag flask-app:latest $DOCKER_ID_USER/flask-app:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push rashaddocker26/flask-app:latest