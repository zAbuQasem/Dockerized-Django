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
3. Add Node ip to hosts file
```sh 
IP=`minikube ip`
echo "$IP mysimpleapp.xyz" | sudo tee -a /etc/hosts
```
4. Deploy application
```sh
kubectl apply -f .
```
