#!/usr/bin/env bash
set -euo pipefail

./compose.sh "${1}" up "${@:2}"
