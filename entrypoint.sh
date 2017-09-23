#!/usr/bin/env bash
set -e
sysctl vm.nr_hugepages
ulimit -Sl -Hl
echo $NICEHASH_WORKER
expression="s/\${NICEHASH_WORKER}/${NICEHASH_WORKER/-/}/"
sed $expression /etc/nicehash-cryptonight >/tmp/nicehash-cryptonight
exec xmr-stak-cpu /tmp/nicehash-cryptonight
