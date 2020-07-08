#!/usr/bin/env bash

set -euo pipefail

kubectl label nodes <your-node-name >disktype=ssd
