#!/bin/bash


kubectl create -f deployments/voting-app-deploy.yaml
kubectl create -f services/external/voting-app-service.yaml

kubectl create -f deployments/result-app-deploy.yaml
kubectl create -f services/external/result-app-service.yaml

kubectl create -f deployments/redis-deploy.yaml
kubectl create -f services/internal/redis-service.yaml

kubectl create -f deployments/postgres-deploy.yaml
kubectl create -f services/internal/postgres-service.yaml

kubectl create -f deployments/worker-app-deploy.yaml

kubectl get deploy,svc,pods
