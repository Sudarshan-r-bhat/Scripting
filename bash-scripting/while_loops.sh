#!/bin/bash

<<com
problem statement:
    1) print all the values where a is less than b and over all values less than 10.
        use while loop to evaluate over 1 condition and next over 2 conditions.
    2) Usage of until...done loop
com

# 1 ----------- while loop syntax differs when you use multiple conditions inside while-condition.
total=10
a=0
b=-2

while [ $a -lt $total ]; do 
    echo $a is less than $total
    let a++   # this is now u increment or another way to evaluate an expression.
done

a=0
while [[ $a -gt $b && $a -lt $total ]]; do

    echo The perfect pairs are : $a, $b
    let a++;
    let b+=2;
done;



a=14
# 2 --------- this looks like an alternative to do...while() of java. instead we use until()...done fashion.
until [[ $a -lt $total ]]; do
    echo $a is gt $total
    let a--
done





