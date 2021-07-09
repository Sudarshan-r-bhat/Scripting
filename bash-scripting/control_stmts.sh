#!/bin/bash

<<com
problem statement:
  1) Accept 3 args firstname, lastname, show. Display the full name only if 
   the show args is True.
  
  2) Use case statements to check if the name equals 'sam', 'ram', 'joy', 'ron', 'zen'.
   and print its reverse accordingly.

com

FIRST_NAME=$1
LAST_NAME=$2
SHOW=$3
# 1 -------------------
# THERE SHOULD NOT BE ANY SPACE LIKE ' NAME = $1 '

if [ "$SHOW" = "true" ]; then
  echo "Hello, $FIRST_NAME $LAST_NAME"
elif [ "$SHOW" = "false"]; then
  echo "pass the last($3) param to true to display the appropriate output"
else 
  echo "Invalid argument passed! (fname, lname, display: boolean)"
fi


# 2 --------------------
case $FIRST_NAME in 
ram)
  echo mar
  ;;
"sam")
  echo mas
  ;;
"joy")
  echo yoj
  ;;
"ron")
  echo nor
  ;;
"zen")
  echo nez
  ;;
esac








