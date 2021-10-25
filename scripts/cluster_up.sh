#!/bin/bash
set -o errexit

echo "Creating local registry ..."

# create registry container unless it already exists
reg_name='k8s-dev-env-registry'
reg_port='5000'
running="$(docker inspect -f '{{.State.Running}}' "${reg_name}" 2>/dev/null || true)"
if [ "${running}" != 'true' ]; then
  docker run \
    -d --restart=always -p "127.0.0.1:${reg_port}:5000" --name "${reg_name}" \
    registry:2
fi

# connect the registry to the cluster network
# (the network may already be connected)
docker network connect "kind" "${reg_name}" || true

kind create cluster --name k8s-dev-env --config=./k8s/cluster.yaml

echo "Instaling plugins..."

kubectl apply -f ./k8s/plugins

echo "Waiting Ingress to be ready..."

sleep 5

kubectl wait --namespace ingress-nginx \
		    --for=condition=ready pod \
		    --selector=app.kubernetes.io/component=controller \
		    --timeout=90s

echo "Ingress is ready"

echo "Cluster UP!"
