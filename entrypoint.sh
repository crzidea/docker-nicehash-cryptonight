#!/usr/bin/env bash
set -e
sysctl vm.nr_hugepages
ulimit -Sl -Hl
xmr-stak-cpu /etc/nicehash-cryptonight
