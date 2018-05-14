#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/attendances"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "attendance": {
      "date_attended": "2018-05-14",
      "hours_worked": 7.5,
      "employee_id": 2
    }
  }'

echo
