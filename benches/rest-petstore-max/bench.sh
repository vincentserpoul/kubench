#!/usr/bin/env bash

set -euo pipefail

#==============================================================================#

#============================  i n c l u d e s  ===============================#

DIR_WS="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR_WS" ]]; then DIR_WS="$PWD"; fi

# shellcheck source=/dev/null
. "$DIR_WS/../../scripts/utils.sh"
# shellcheck source=/dev/null
. "$DIR_WS/../../scripts/bencher.sh"
# shellcheck source=/dev/null
. "$DIR_WS/../../scripts/applications.sh"

#================================ B E N C H ===================================#

# Send max of reqs
same_cluster_bench_rest_petstore_max() {
    local -r APP_NAME=$1
    local -r FOLDER=$2

    same_cluster_bench_rest_petstore_wrk "$APP_NAME" "$FOLDER" 0 "$BENCH_DURATION_S"
}

same_cluster_bench_rest_petstore() {
    local -r APP_NAME=$1
    local -r FOLDER=$2

    same_cluster_bench_rest_petstore_wrk "$APP_NAME" "$FOLDER" "$BENCH_RATE_S" "$BENCH_DURATION_S"
}

same_cluster_bench_rest_petstore_wrk() {
    local -r APP_NAME=$1
    local -r FOLDER=$2
    local -r BENCH_RATE=$3
    local -r BENCH_DURATION=$4

    local -r BENCH_POD=$(kubectl get pods --selector=app=bencher -o name --no-headers=true | head -n 1)

    einfo "heating up pods"

    kubectl exec -it "$BENCH_POD" -c bencher -- /bin/sh -c \
        "wrk --latency -t4 -c200 -d1s http://$APP_NAME/pet/bu0oinkev9hd10a678c0"
    sleep 5s

    einfo "starting bench"
    metrics_get "$APP_NAME" "$FOLDER" &
    kubectl exec -it "$BENCH_POD" -c bencher -- /bin/sh -c \
        "wrk --latency -t4 -c200 -d""$BENCH_DURATION""s http://$APP_NAME/pet/bu0oinkev9hd10a678c0" >>"$(printf "$FOLDER/results_%s_bench.md" "$APP_NAME")"

    einfo "bench finished"
}

#================================= M A I N ====================================#

WITH_HPA=true
BASE_DOCKER_REPO=${1:-vincentserpoul}
readonly IMPL_REST_PETSTORE=('rust-dropshot' 'go-induzo')

bencher_deploy

for implementation in "${IMPL_REST_PETSTORE[@]}"; do
    printf "# HTTP %s raw HTTP GET benchmarks\n\n" "$implementation" >"$(printf "$DIR_WS/results_%s_bench.md" "$implementation")"

    application_deploy "$implementation" "rest-petstore" "$BASE_DOCKER_REPO" "$WITH_HPA"
    sleep 5s
    same_cluster_bench_rest_petstore_max "$implementation" "$DIR_WS"
    application_delete "$implementation" "rest-petstore" "$BASE_DOCKER_REPO"
done

bencher_delete
