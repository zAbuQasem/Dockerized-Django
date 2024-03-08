# Kubernetes Deployment

## Usage
1. Start Minikube
```sh 
minikube start --driver docker --kubernetes-version=v1.28.3
```
2. Enable ingress addon
```sh 
minikube addons enable ingress
```
3. Deploy application
```sh
kubectl apply -f .
```
