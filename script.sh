#!/bin/bash
function get_token() {
   access_token=$(curl -s -X POST "$BASE_URL/api/login"\
   -H 'Content-Type:application/json' \
   -d "{\"email\":\"$EMAIL\", \"password\":\"$PASSWORD\", \"fcm_token\":\"abc\"}" | jq -r '.access_token') 

  echo "Got a new access token: $access_token"
  export ACCESS_TOKEN=$access_token
}

source ensure-env.sh
