#!/usr/bin/env bash

kubectl create -f pods/voting-app-pod.yaml
kubectl create -f services/external/voting-app-service.yaml

kubectl create -f pods/result-app-pod.yaml
kubectl create -f services/external/result-app-service.yaml

kubectl create -f pods/redis-pod.yaml
kubectl create -f services/internal/redis-service.yaml

kubectl create -f pods/postgres-pod.yaml
kubectl create -f services/internal/postgres-service.yaml

kubectl create -f pods/worker-pod.yaml

kubectl get pods,svc
