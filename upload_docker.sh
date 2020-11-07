#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath='abdelrahmanabdelkarim/housepredictions'

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=abdelrahmanabdelkarim
docker tag aa6a197d8c81 $dockerpath:housepricespredictions
# Step 3:
# Push image to a docker repository
docker push $dockerpath

