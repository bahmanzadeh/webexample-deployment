#!/bin/bash
kubectl apply -f webapp1-vs.yaml
kubectl apply -f webapp1-dr.yaml
kubectl apply -f webapp2-vs.yaml
kubectl apply -f webapp2-dr.yaml
#kubectl rollout restart deploy -n ns1
#kubectl rollout restart deploy -n ns2