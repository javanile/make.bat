#!/usr/bin/env bash

WORKDIR="${PWD}:/make"
FSOCKET="/var/run/docker.sock:/var/run/docker.sock"

echo ""
echo "=======[ MAKE: $@ ]========"
docker run --rm -ti -v "${WORKDIR}" -v "${FSOCKET}" javanile/make.bat "$@"
