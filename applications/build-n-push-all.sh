#!/usr/bin/env bash

set -euo pipefail

#==============================================================================#

#============================  i n c l u d e s  ===============================#

DIR_BUILD="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR_BUILD" ]]; then DIR_BUILD="$PWD"; fi

# shellcheck source=/dev/null
. "$DIR_BUILD/../scripts/utils.sh"

#================================= M A I N ====================================#

readonly RAW_HTTP_GET_APPS=("$DIR_BUILD"/raw-http-get/*)

SELECTED_BASE_DOCKER_REPO=${BASE_DOCKER_REPO:-vincentserpoul}

for app in "${RAW_HTTP_GET_APPS[@]##*/}"; do
    docker build "$DIR_BUILD"/raw-http-get/"$app" \
        --rm -t "$SELECTED_BASE_DOCKER_REPO"/kubench-"$app" \
        -f "$DIR_BUILD"/raw-http-get/"$app"/Dockerfile
    docker push "$SELECTED_BASE_DOCKER_REPO"/kubench-"$app"
done
