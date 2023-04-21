#!/bin/bash

set -euo pipefail

IMAGE="dtseiler/hello-world"
VERSION=$(cat VERSION)

git tag "v${VERSION}"
git push --tags

docker build --build-arg version=$VERSION -t ${IMAGE}:${VERSION} .
docker push ${IMAGE}:${VERSION}
