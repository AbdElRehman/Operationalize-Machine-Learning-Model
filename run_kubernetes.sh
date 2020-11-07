#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=abdelrahmanabdelkarim/housepredictions:housepricespredictions

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlmodel --image=$dockerpath --labels="tag=MLmodel"

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
POD_NAME=$(kubectl get pods -l tag=MLmodel -o jsonpath='{.items[0].metadata.name}')
kubectl port-forward mlmodel 8000:80
