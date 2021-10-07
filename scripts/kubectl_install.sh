#!/bin/bash

KUBECTL_VERSION=v1.22.0

curl -LO https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl

curl -LO https://dl.k8s.io/${KUBECTL_VERSION}/bin/linux/amd64/kubectl.sha256
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
rm kubectl.sha256

chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

kubectl version --client

