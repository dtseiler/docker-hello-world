#!/bin/bash

set -euo pipefail

IMAGE="dtseiler/hello-world"
VERSION=$(cat VERSION)

git tag "v${VERSION}"
git push --tags

docker build -t ${IMAGE}:${VERSION} .
#docker tag ${IMAGE}:${VERSION}
docker push ${IMAGE}:${VERSION}
