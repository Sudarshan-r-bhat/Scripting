#!/bin/bash
FIRST_NAME=$1
LAST_NAME=$2
SHOW=$3
# THERE SHOULD NOT BE ANY SPACE LIKE ' NAME = $1 '

if [ "$SHOW" = "true" ]; then
  echo "Hello, $FIRST_NAME $LAST_NAME"
else 
  echo "pass the last($3) param to true to display the appropriate output"
fi