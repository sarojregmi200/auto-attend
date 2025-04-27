#!/bin/bash
function get_token() {
  access_token=$(curl -X POST https://erp.bright-gps.com/api/login \
  -H "Content-Type:application/json" \
  -d '{"email":"$USERNAME", "password":"$PASSWORD", "fcm_token":"$FCM_TOKEN"}' | jq -r '.access_token')

  echo "Got a new access token: $access_token"
  export ACCESS_TOKEN=$access_token
}

source ensure-env.sh
