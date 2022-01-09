#!/usr/bin/env bash

if [ -z "${@}" ]; then
    echo "At least one arg is required."
    exit 1
fi

docker run -it --rm \
    -u $(id -u ${USER}):$(id -g ${USER}) \
    -v ${PWD}:/opt/cluster-api-provider-generic-http \
    --entrypoint "${1}" \
    cluster-api-provider-http-bridge-tools ${2}