#!/bin/bash

<<com
problem statement:
    1) add 2 numbers in different possible ways and print the sum.
    2) 

com

unset x
unset y
unset z


# 1 ---------
x=$((3 + 4))
echo $x

x=`expr 2 + 3`
echo $x

let x=(2 + 4)
echo $x

y=$((x ** 3))
echo Exponent of $x \** 3 = $y

# notice the below 2 syntax.both are valid.
z=$(($x + $y))
echo $z

z=$(( x - y ))
echo $z







