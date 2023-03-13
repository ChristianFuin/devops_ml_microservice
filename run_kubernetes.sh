#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mrwhitedev/house_prediction:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy house_prediction --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
kubectl get pods
# Step 4:
# Forward the container port to a host
POD=$(kubectl get pods -o=jsonpath='{.items[0].metadata.name}')
kubectl port-forward pod/$POD --address 0.0.0.0 8000:80
