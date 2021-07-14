#!/bin/bash

<<com
problem statement:
    1. Make a provision to read 2 arguments firstname & lastname.
     and print a statement.
    2. Check if the variable is set or not. and display the result accordingly.
com


NAME=$1
LASTNAME=$2
echo "Hi, $NAME $LASTNAME, today's date is $(date)"

echo # 2 -----
# It can checked in 2 ways: Note: 1st method checks if variable is set.
# 2nd method check if the variable is not set.!
if [[ -v LASTNAME ]]; then
    echo "The variable is set."
else
    echo "the variable is not set!";
fi;

unset b;

if [[ -z ${b} ]]; then
    echo "The variable is NOT  set."
else
    echo "the variable is set!";
fi;

