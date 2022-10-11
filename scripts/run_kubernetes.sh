#!/usr/bin/env bash

# This spins a pod in kubernetes cluster using an image from docker hub.

# Step 1:
# This is your Docker ID/path
dockerpath="aobri/cloud-devops-capstone:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run cloud-devops-capstone-green\
    --image=$dockerpath\
    --port=80 --labels app=capstone-green

# Step 3:
# List kubernetes pods
sleep 10
kubectl get pods

# Step 4:
# Forward the container port to a host
sudo -E kubectl port-forward capstone-green 80:80

