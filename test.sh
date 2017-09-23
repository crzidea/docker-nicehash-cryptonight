#!/usr/bin/env bash
. ./build.sh && docker run --rm -it --cap-add=IPC_LOCK --ulimit memlock=262144 $USER/$image bash
