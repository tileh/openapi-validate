#!/bin/bash
npm i @apidevtools/swagger-cli -g
echo "VALIDATE_RESULT=$(swagger-cli validate "$GITHUB_WORKSPACE/$INPUT_PATH")" >> $GITHUB_ENV
if [[ $VALIDATE_RESULT == *"is valid" ]]
then
  exit 0
else
  echo $VALIDATE_RESULT
  exit 1
fi
