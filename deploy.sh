#!/bin/bash

echo "🚀 Deploying Micro Notes App to Kubernetes..."

kubectl apply -f k8s/namespace.yml
kubectl apply -f k8s/pvc.yml
kubectl apply -f k8s/backend.yml
kubectl apply -f k8s/frontend.yml
kubectl apply -f k8s/ingress.yml

echo "✅ Deployment complete!"
kubectl get all -n micro-notes
