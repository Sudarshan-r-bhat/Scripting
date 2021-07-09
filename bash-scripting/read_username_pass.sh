#!/bin/bash

<<com
problem statement:
    1. read a username and password field and print them.
    2. read a username and password field with * mark  and print them. (pending)
com

# this is how you declare a variable without defining it.
unset USERNAME
unset PASSWORD

echo ENTER YOU\'RE USERNAME AND PASSWORD TO LOGIN 
read -p 'USERNAME: ' USERNAME
read -sp 'PASSWORD: ' PASSWORD

if [ ${#PASSWORD} -le 3 ]; then
    echo "password length should be more than 3 letters long"
else 
    echo "The password you entered is : $PASSWORD"
    echo "Login success!"
fi




