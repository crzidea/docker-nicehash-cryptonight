#!/usr/bin/env bash
set -e
. docker-build
docker run \
  --rm \
  --interactive \
  --tty \
  --cap-add=IPC_LOCK \
  --ulimit memlock=262144 \
  $USER/$image \
  bash
