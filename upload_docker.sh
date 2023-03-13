#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
USER=mrwhitedev
# Step 1:
# Create dockerpath
dockerpath=house_prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag $dockerpath $USER/$dockerpath
docker login -u $USER

# Step 3:
# Push image to a docker repository
docker push $USER/$dockerpath