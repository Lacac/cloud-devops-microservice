#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=laclac0901/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-deployment --image=laclac0901/api:latest

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward laclac0901/api 80:8080
