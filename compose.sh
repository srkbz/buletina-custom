#!/usr/bin/env bash
set -euo pipefail

export BULETINA_VERSION=1.0.0_20201126_231117
export VARIATION_NAME="${1}"
export VARIATION_VERSION="${VARIATION_VERSION:-local}"

docker-compose -p buletina-custom-builder -f ./docker/docker-compose.yml "${@:2}"
