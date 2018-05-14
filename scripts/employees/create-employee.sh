#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/employees"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "employee": {
      "first_name": "Zhu",
      "last_name": "Chen",
      "dob": "1989-05-20",
      "wage_per_hour": 16.50
    }
  }'

echo
