#!/bin/bash

# This script ensures that all the required variables
# are set before running the script

if [ -z "$BASE_URL" ]; then
  echo "Please set BASE_URL"
  exit 1
fi

if [ -z "$STATUS_ROUTE" ]; then
  echo "Please set STATUS_ROUTE"
  exit 1
fi

if [ -z "$ATTENDANCE_ROUTE" ]; then
  echo "Please set ATTENDANCE_ROUTE"
  exit 1
fi

if [ -z "$USERNAME" ]; then
  echo "Please set USERNAME"
  exit 1
fi

if [ -z "$PASSWORD" ]; then
  echo "Please set PASSWORD"
  exit 1
fi

if [ -z "$FCM_TOKEN" ]; then
  echo "Please set FCM_TOKEN"
  exit 1
fi

if [ -z "$ACCESS_TOKEN" ]; then
  get_token
fi
