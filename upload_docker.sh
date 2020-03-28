#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=kartheekakkur1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login -u $dockerpath -p Chinnu@1
docker tag 2a7c8f7bcbff kartheekakkur1/app

# Step 3:
docker push kartheekakkur1/app
