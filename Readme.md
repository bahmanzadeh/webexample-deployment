You use metallb for external load balancer for Minikube. here is the order for the installation:

Before installing Istio make sure you install Metallb:

- (Optional) kubectl config use-context cluster1
- metallb-setarp.sh --> only first time on the Kubernetes cluster
- metallb-install.sh  
- metallb-ipaddresspool.yaml --> determine what IP pool should be assined to the outside services:
kubectl apply -f metallb-ipaddresspool.yaml

Enabling nginx ingress controller would be enough to use that for external access and just configure ingress rules for each service using Ingress in Kubernetes. then you don't need a load balancer as ingress controller. If you need a load balancer to act as the ingress controller you need to declare it using ingressclass file and then in the ingress yaml file also make sure to specify the ingressclassname.

nginx uses Nodeport for providing external access. For Ingress controller you have the option to use nginx controller OR External LB like Metallb.

If you need to use Istio ingress gateway as a ingress controller then you need a Loadbalancer since an Istio ingress gateway creates a LoadBalancer service. So if you need to use Istio ingress gateway then make sure to install Metallb as a loadbalancer for your Lab environment.

SSH to the pods:
kubectl exec -it webapp1-deployment-7597d98f7b-8v9hf -n ns1 -- /bin/bash
Run these commands:
apt update
apt install curl -y
curl -I http://webapp2.ns2

