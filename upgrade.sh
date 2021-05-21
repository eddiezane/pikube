#!/bin/bash

set -euo pipefail

K3S_VERSION="v1.21.1+k3s1"
CONTROL_PLANE_IP="192.168.78.10"
WORKER_IPS=("192.168.78.11" "192.168.78.12" "192.168.78.13")

k3sup install --user pi --ip $CONTROL_PLANE_IP --k3s-extra-args "--no-deploy servicelb" --k3s-version $K3S_VERSION

for i in ${WORKER_IPS[@]}; do
  k3sup join --user pi --server-ip $CONTROL_PLANE_IP --ip $i --k3s-version $K3S_VERSION
done
