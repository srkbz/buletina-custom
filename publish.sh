#!/usr/bin/env bash
set -euo pipefail

export VARIATION_VERSION="$(date +'%Y%m%d_%H%M%S')"
./compose.sh "${1}" build buletina
./compose.sh "${1}" push buletina
