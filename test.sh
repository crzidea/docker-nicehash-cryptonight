#!/usr/bin/env bash
set -e
. docker-build
docker run \
  --rm \
  --interactive \
  --tty \
  --env NICEHASH_WORKER=$DOCKER_HOSTNAME \
  --cap-add=IPC_LOCK \
  --ulimit memlock=262144 \
  $USER/$image \
  bash
