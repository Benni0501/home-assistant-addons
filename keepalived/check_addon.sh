#!/bin/sh

if [[ -z "${ADDON}" ]]; then
  return 0
fi

curl_output=$(curl --url "http://supervisor/addons/${ADDON}/info" \
  --header "Authorization: Bearer ${SUPERVISOR_TOKEN}"
)
addon_state=$(echo $curl_output | jq -r '.data.state')

if [[ "$addon_state" == "started" ]]; then
    return 0
else
    return 1
fi