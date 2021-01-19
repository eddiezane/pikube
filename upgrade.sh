#!/bin/bash

set -euo pipefail

# TODO: make this an actual script

k3sup install --user pi --ip 192.168.78.10 --k3s-extra-args '--no-deploy servicelb' --k3s-version 'v1.20.2+k3s1'
k3sup join --user pi --server-ip 192.168.78.10 --ip 192.168.78.11 --k3s-version 'v1.20.2+k3s1'
k3sup join --user pi --server-ip 192.168.78.10 --ip 192.168.78.12 --k3s-version 'v1.20.2+k3s1'
k3sup join --user pi --server-ip 192.168.78.10 --ip 192.168.78.13 --k3s-version 'v1.20.2+k3s1'
