#!/usr/bin/env bash

set -euo pipefail

#==============================================================================#

#============================  i n c l u d e s  ===============================#

DIR_APP="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR_APP" ]]; then DIR_APP="$PWD"; fi

# shellcheck source=/dev/null
. "$DIR_APP/utils.sh"

#=========================  a p p l i c a t i o n s  ==========================#

application_deploy() {
    local -r APP=$1
    local -r BENCH=$2
    local -r BASE_DOCKER_REPO=${3:-vincentserpoul}

    einfo "deploying $APP"

    sed "s/BASE_DOCKER_REPO/$BASE_DOCKER_REPO/g" ./applications/"$BENCH"/"$APP"/k8s.yaml | kubectl apply -f -
    sleep 1s
    kubectl rollout status deployment.v1.apps/"$APP"-deployment
}

application_delete() {
    local -r APP=$1
    local -r BENCH=$2
    local -r BASE_DOCKER_REPO=${3:-vincentserpoul}

    einfo "deleting $APP"

    sed "s/BASE_DOCKER_REPO/$BASE_DOCKER_REPO/g" ./applications/"$BENCH"/"$APP"/k8s.yaml | kubectl delete -f -

}
