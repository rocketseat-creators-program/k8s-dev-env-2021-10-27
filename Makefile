CLUSTER_NAME=k8s-dev-env

kubectl-install:
	./scripts/kubectl_install.sh

kind-install:
	./scripts/kind_install.sh

kind-up:
	kind create cluster --name ${CLUSTER_NAME}

kind-down:
	kind delete cluster --name ${CLUSTER_NAME}

