#!/bin/bash
function get_token() {
   access_token=$(curl -s -X POST "$BASE_URL/api/login"\
   -H 'Content-Type:application/json' \
   -d "{\"email\":\"$EMAIL\", \"password\":\"$PASSWORD\", \"fcm_token\":\"abc\"}" | jq -r '.access_token') 

  echo "Got a new access token: $access_token"
  export ACCESS_TOKEN=$access_token
}

function get_attendance_status() {
    attendance_status=$(curl -s -X GET "$BASE_URL/api/status"\
        -H "Authorization: Bearer $ACCESS_TOKEN"\
        -H 'Content-Type:application/json')

    if [[ "$attendance_status" == "Not found." ]]; then
        echo "No attendance present yet for today"
        export ATTENDANCE_STATUS=false
    else 
        echo "Attendance present for today"
        export ATTENDANCE_STATUS=true
        exit 0
    fi
}

function check_in() {
    if [ "$ATTENDANCE_STATUS" == "true" ]; then
        echo "No checkin required for today. Attendance already present!!"
        exit 0
    fi

    check_in_status=$(curl -s -X POST "$BASE_URL/api/checkin"\
        -H "Authorization: Bearer $ACCESS_TOKEN"\
        -H 'Content-Type:application/json')

    # TODO: Check the checkin response 
}

source ensure-env.sh

get_attendance_status
