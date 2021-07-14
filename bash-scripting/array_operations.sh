#!/bin/bash

<<com
problem statement:
    . create an array of names and print the 3rd name
    . slice the names array and print the subArray.
com

# 1 ---------
# declare an array -> access index and print -> print whole
declare -a names
names=(sudarshan sanket rajeev shankar sureen)
echo "${names[2]}";
declare -p names

# 2 ---------
declare -a subNames;
subNames=(${names[@]:1:3});  # always remember to enclose within the circular braces for arrays.
declare -p subNames; 
















