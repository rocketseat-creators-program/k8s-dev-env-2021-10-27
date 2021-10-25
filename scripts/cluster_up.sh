#!/bin/bash

kind create cluster --name k8s-dev-env --config=./k8s/cluster.yaml

echo "Instaling plugins..."

kubectl apply -f ./k8s/plugins/*

echo "Waiting Ingress to be ready..."

sleep 2

kubectl wait --namespace ingress-nginx \
		    --for=condition=ready pod \
		    --selector=app.kubernetes.io/component=controller \
		    --timeout=90s

echo "Ingress is ready"

echo "Cluster UP!"
