#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"

IMAGE_NAME=finodigital/nexus3-keycloak
IMAGE_VERSION=3.28.0

docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} \
             --build-arg NEXUS_VERSION=${IMAGE_VERSION} \
             -f "${DIR}/Dockerfile" "${DIR}"
