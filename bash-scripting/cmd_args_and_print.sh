#!/bin/bash

<<com
problem statement:
    1. Make a provision to read 2 arguments firstname & lastname.
     and print a statement.

com


NAME=$1
LASTNAME=$2
echo "Hi, $NAME $LASTNAME, today's date is $(date)"


