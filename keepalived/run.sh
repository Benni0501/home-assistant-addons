#!/bin/sh
# shellcheck shell=dash

set -x

config_get() {
  local config=/data/options.json
  jq --raw-output ".${1}" "$config"
}

# shellcheck disable=2155
{
  export INTERFACE="$(config_get interface)"
  export PASSWORD="$(config_get password)"
  export PRIORITY="$(config_get priority)"
  export ROUTER_ID="$(config_get router_id)"
  export VIRTUAL_IPS="$(config_get virtual_ips)"
  export STATE="$(config_get state)"
}

# Run upstream entrypoint
exec /entrypoint.sh