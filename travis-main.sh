#!/usr/bin/env bash

#### halt script on error
set -xe

#### Build the Docker Images
if [ -n "${PHP_VERSION}" ]; then
    docker build -f ./Dockerfile-${PHP_VERSION} -t ${DOCKER_ORGANIZATION}/base-ws:${IMAGE_TAG} .
fi
