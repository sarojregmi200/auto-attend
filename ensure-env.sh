#!/bin/bash

# This script ensures that all the required variables
# are set before running the script
# TODO: Ask for the missing variables and export them 
# proabably in the config files as well.
# if they choose it to be persistent.

if [ -z "$BASE_URL" ]; then
  echo "Please set BASE_URL"
  exit 1
fi

if [ -z "$EMAIL" ]; then
  echo "Please set EMAIL"
  exit 1
fi

if [ -z "$PASSWORD" ]; then
  echo "$PASSWORD"
  echo "Please set PASSWORD"
  exit 1
fi

if [ -z "$ACCESS_TOKEN" ]; then
  get_token
fi
