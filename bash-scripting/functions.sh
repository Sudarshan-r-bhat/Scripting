#!/bin/bash
<<com
problem statement:
    1) Implement a function without any argument
    2) Implemetn a function to take 2 arguments and perform a mod b
    3) Override builtin commands using functions.

notes:
    There are 2 syntax to write a function. function <name> {} , functionName() {}

com
# 1 ---------
withNoArguments() {
    echo This is the function withNoArguments. invoked at `date +"[%d-%m %H:%M:%S]"`
} 
withNoArguments

# 2 ---------
withArguments() {
    echo args = $?, args = "$@", args passed = "${#@}"
    return 200;
}

echo "$(withArguments 23)  "; 

# 3 ---------

echo() {
    builtin echo -n   `date +"[%d-%m %H:%M:%S]"`:;
    builtin echo $1;
}

echo "sudarshan over and out"









