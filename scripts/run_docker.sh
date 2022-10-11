#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t aobri/cloud-devops-capstone:latest .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# docker run -p 80:80 --rm --name house_price_predictor_instance house_price_predictor:dev
# docker run -it --rm -d -p 8080:80 --name web -v ~/site-content:/usr/share/nginx/html nginx
docker run -it --rm -d -p 8080:80 --name cloud-devops-capstone-app aobri/cloud-devops-capstone:latest