#!/bin/bash
cd
curl -L https://istio.io/downloadIstio | sh -
# copy istioctl to /usr/local/bin
sudo cp ~/istio-1.17.2/bin/istioctl /usr/local/bin/
# install
istioctl install --set profile=demo -y
# verify
istioctl analyze
istioctl version
