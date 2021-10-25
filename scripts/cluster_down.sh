#!/bin/bash

kind delete cluster --name k8s-dev-env

echo 'Shutting down local registry ...'
docker kill k8s-dev-env-registry
docker rm k8s-dev-env-registry

echo 'Cluster down'

