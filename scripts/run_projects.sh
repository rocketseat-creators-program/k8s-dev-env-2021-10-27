#!/bin/bash

cd projects

for project in */ ; do
    # Remove / from project name
    project=$(echo "$project" | sed "s/\///")

    echo "Building $project ..."

    docker build $project -t localhost:5000/$project:local
    docker push localhost:5000/$project:local

    echo "Applying $project manifests ..."

    kubectl replace --force -f ./$project/k8s
done

