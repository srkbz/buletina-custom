#!/usr/bin/env bash
set -euo pipefail

export BULETINA_VERSION=1.1.0_20201203_185955

export VARIATION_NAME="${1}"
export VARIATION_VERSION="${VARIATION_VERSION:-local}"

docker-compose -p buletina-custom-builder -f ./docker/docker-compose.yml "${@:2}"
