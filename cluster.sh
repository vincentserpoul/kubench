#!/usr/bin/env bash

#---help---
# Usage: ./cluster.sh [options]
#
# This script creates a local k3s/k8s cluster for your dev purposes (lighter k8s).
#
# Example:
#   ./cluster.sh -p k3d -n localk3d -a create
#
# Options and environment variables:
#   -p PROVIDER            provider of the cluster (k3d, for instance)
#
#   -a ACTION              either create or delete
#
#   -n CLUSTER_NAME       name of the cluster
#
#   -h                     Show this help message and exit.
#
#
# Each option can be also provided by environment variable. If both option and
# variable is specified and the option accepts only one argument, then the
# option takes precedence.
#
#---help---

set -euo pipefail

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

# shellcheck source=/dev/null
. "$DIR/scripts/utils.sh"
# shellcheck source=/dev/null
. "$DIR/scripts/digital-ocean.sh"

#============================  M a i n  ============================#

while getopts 'p:a:h' OPTION; do
    case "$OPTION" in
    p) PROVIDER="$OPTARG" ;;
    a) ACTION="$OPTARG" ;;
    h)
        usage
        exit 0
        ;;
    *) echo 'not handled flag' ;;
    esac
done

: "${PROVIDER:="k3d"}"
: "${ACTION:="create"}"
: "${CLUSTER_NAME:="kubench"}"

if [ "$ACTION" == "create" ]; then
    if [ "$PROVIDER" == "k3d" ]; then
        k3d cluster create kubench-k3d \
            --agents 2 \
            --port 8080:80@agent[0] \
            --update-default-kubeconfig \
            --switch-context \
            --wait
    elif [ "$PROVIDER" == "digitalocean" ]; then
        do_cluster_create kubench-do
    else
        echo "non existing provider: $PROVIDER"
    fi
elif [ "$ACTION" == "delete" ]; then
    if [ "$PROVIDER" == "k3d" ]; then
        k3d cluster delete kubench-k3d
    elif [ "$PROVIDER" == "digitalocean" ]; then
        do_cluster_delete kubench-do
    else
        echo "non existing provider: $PROVIDER"
    fi
fi
