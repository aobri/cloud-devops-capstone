#!/usr/bin/env bash

# This spins a pod in kubernetes cluster using an image from docker hub.

# Step 1:
# This is your Docker ID/path
dockerpath="aobri/house_price_predictor"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run house-price-predictor\
    --image=$dockerpath\
    --port=80 --labels app=house-price-predictor


# Step 3:
# List kubernetes pods
sleep 10
kubectl get pods

# Step 4:
# Forward the container port to a host
sudo -E kubectl port-forward house-price-predictor 80:80

