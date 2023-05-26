# New-Item -Path 'c:\' -Name 'minikube' -ItemType Directory -Force
Invoke-WebRequest -OutFile 'c:\minikube\minikube.exe' -Uri 'https://github.com/kubernetes/minikube/releases/latest/download/minikube-windows-amd64.exe' -UseBasicParsing
minikube start --vm-driver="hyperv" --hyperv-virtual-switch="Default Switch" --cpus=6 --memory=6g --service-cluster-ip-range='10.120.0.0/16' 