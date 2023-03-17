You use metallb for external load balancer for Minikube. here is the order for the installation:
- metallb-setarp.sh --> only first time on the Kubernetes cluster
- metallb-install.sh  
- metallb-ipaddresspool.yaml --> determine what IP pool should be assined to the outside services

Enabling nginx controller would be enough to use that for external access and just configure ingress rules for each service.
For Ingress controller you have the option to use nginx controller OR External LB like Metallb.

