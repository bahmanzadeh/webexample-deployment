#!/bin/bash
cd
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start -p cluster1 --driver=kvm2 --cpus=4 --memory=6g --service-cluster-ip-range='10.10.0.0/16' 
