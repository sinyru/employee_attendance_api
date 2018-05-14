#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/attendances/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "attendance": {
      "hours_worked": 9
    }
  }'

echo
