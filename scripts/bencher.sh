#!/usr/bin/env bash

set -euo pipefail

#==============================================================================#

#============================  i n c l u d e s  ===============================#

DIR_BENCHER="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR_BENCHER" ]]; then DIR_BENCHER="$PWD"; fi

# shellcheck source=/dev/null
. "$DIR_BENCHER/utils.sh"

#================================ b e n c h e r ===============================#

bencher_deploy() {
    local -r BASE_DOCKER_REPO=${1:-vincentserpoul}

    einfo "deploying bencher"

    sed "s/BASE_DOCKER_REPO/$BASE_DOCKER_REPO/g" ./bencher/k8s.yaml | kubectl apply -f -
    kubectl rollout status deployment.v1.apps/bencher-deployment
}

bencher_delete() {
    local -r BASE_DOCKER_REPO=${1:-vincentserpoul}

    einfo "deleting bencher"

    sed "s/BASE_DOCKER_REPO/$BASE_DOCKER_REPO/g" ./bencher/k8s.yaml | kubectl delete -f -
}

#=================================== b e n c h ================================#

readonly BENCH_DURATION_S=90
readonly METRICS_DELAY_S=$(("$BENCH_DURATION_S" * 2 / 3))
readonly BENCH_RATE_S=2000

same_cluster_bench() {
    local -r APP_NAME=$1
    local -r FOLDER=$2

    same_cluster_bench_vegeta "$APP_NAME" "$FOLDER" "$BENCH_RATE_S" "$BENCH_DURATION_S"
}

same_cluster_bench_vegeta() {
    local -r APP_NAME=$1
    local -r FOLDER=$2
    local -r BENCH_RATE=$3
    local -r BENCH_DURATION=$4

    local -r BENCH_POD=$(kubectl get pods --selector=app=bencher -o name --no-headers=true | head -n 1)

    einfo "heating up pods"

    kubectl exec -it "$BENCH_POD" -c bencher -- /bin/sh -c \
        "echo 'GET http://""$APP_NAME""' | vegeta attack -duration=1s -output=/dev/null"
    sleep 5s

    einfo "starting bench"
    metrics_get "$APP_NAME" "$FOLDER" &
    kubectl exec -it "$BENCH_POD" -c bencher -- /bin/sh -c \
        "echo 'GET http://$APP_NAME' | vegeta attack -duration=""$BENCH_DURATION""s -workers 50 -rate ""$BENCH_RATE"" -output=/home/appuser/results.bin"
    {
        echo '```'
        kubectl exec -it "$BENCH_POD" -c bencher -- /bin/sh -c \
            "cat /home/appuser/results.bin | vegeta report -type=""text"""
        echo " "
        kubectl exec -it "$BENCH_POD" -c bencher -- /bin/sh -c \
            "cat /home/appuser/results.bin | vegeta report -type=""hist[0,10ms,20ms,30ms,40ms,50ms,60ms,70ms,80ms,90ms,100ms,200ms,300ms]"""
        echo '```'
    } >>"$(printf "$FOLDER/results_%s_bench.md" "$APP_NAME")"

    einfo "bench finished"
}

metrics_get() {
    local -r APP_NAME=$1
    local -r FOLDER=$2

    sleep "$METRICS_DELAY_S"s
    {
        echo '```'
        kubectl top pods
        echo '```'
        echo ' '
    } >>"$(printf "$FOLDER/results_%s_bench.md" "$APP_NAME")"
}
