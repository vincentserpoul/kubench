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

#================================= M A I N ====================================#

WITH_HPA=true
BASE_DOCKER_REPO=${1:-vincentserpoul}
# readonly IMPL_RAW_HTTP_GET=('go-std' 'rust-hyper' 'rust-actix' 'springboot')
readonly IMPL_RAW_HTTP_GET=('springboot')

bencher_deploy

for implementation in "${IMPL_RAW_HTTP_GET[@]}"; do
    printf "# HTTP %s raw HTTP GET benchmarks\n\n" "$implementation" >"$(printf "$DIR_WS/results_%s_bench.md" "$implementation")"

    application_deploy "$implementation" "raw-http-get" "$BASE_DOCKER_REPO" "$WITH_HPA"
    sleep 5s
    same_cluster_bench_max "$implementation" "$DIR_WS"
    application_delete "$implementation" "raw-http-get" "$BASE_DOCKER_REPO"
done

bencher_delete
