#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export dockerpath="2001191203/capstone"
# Step 2:  
# Authenticate & tag
docker login --username 2001191203 --password 7c0d0e27-511d-42c2-b011-bc7f357bb949
docker tag capstone $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath