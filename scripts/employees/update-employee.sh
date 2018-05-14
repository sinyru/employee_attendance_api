#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/employees/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "employee": {
      "first_name": "Zhu",
      "last_name": "Chen",
      "dob": "1989-07-21",
      "wage_per_hour": 17.50
    }
  }'

echo
