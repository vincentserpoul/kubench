#!/usr/bin/env bash

set -euo pipefail

#==============================================================================#

#============================  i n c l u d e s  ===============================#

DIR_BUILD="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR_BUILD" ]]; then DIR_BUILD="$PWD"; fi

# shellcheck source=/dev/null
. "$DIR_BUILD/../scripts/utils.sh"

#================================= M A I N ====================================#

readonly BASE_DOCKER_REPO=${1:-vincentserpoul}
readonly RAW_HTTP_GET_APPS=("$DIR_BUILD"/raw-http-get/*)

for app_folder in "${RAW_HTTP_GET_APPS[@]}"; do
    if [[ -d "$app_folder" ]]; then
        app=${app_folder##*/}
        docker build "$DIR_BUILD"/raw-http-get/"$app" \
            -t "$BASE_DOCKER_REPO"/kubench-"$app" \
            -f "$DIR_BUILD"/raw-http-get/"$app"/Dockerfile
        docker push "$BASE_DOCKER_REPO"/kubench-"$app"
    fi
done
