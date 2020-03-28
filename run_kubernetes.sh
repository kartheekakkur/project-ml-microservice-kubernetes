#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kartheekakkur1

# Step 2
# Run the Docker Hub container with kubernetes

docker login -u $dockerpath -p Chinnu@1

kubectl apply -f kube-manifest.yaml

# Step 3:
# List kubernetes pods
kubectl get pods -A

# Step 4:
# Forward the container port to a host
kubectl port-forward service/udacity-svc 8000:80

