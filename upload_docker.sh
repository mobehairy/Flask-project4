#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

 

# Assumes that an image is built via `run_docker.sh`

 

# Step 1:
# Create dockerpath
dockerpath=mbehairy/flask

 

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u mbehairy
docker tag flask $dockerpath

 

# Step 3:
# Push image to a docker repositorya

 

docker push $dockerpath