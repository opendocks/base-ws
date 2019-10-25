#!/usr/bin/env bash

#### halt script on error
set -xe

#### Build the Docker Images
if [ -n "${FILE_IDENTIFIER}" ]; then
    docker build -f ./Dockerfile-${FILE_IDENTIFIER} -t ${DOCKER_ORGANIZATION}/base-ws:${IMAGE_TAG} .
fi
