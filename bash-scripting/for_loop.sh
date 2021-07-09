#!/bin/bash
<<com
problem statement:
    1) Read N arguments, print the no of args passed and Print each arg's value.
    2) Print 1 to 100 using for loop
    3) iterate over array elements.
    4) iterate over each word of a multiline string
    5) iterate over each line of a multiline string
    6) iterate over an array using the index and use break keyword to break.
    7)


com
# 1 ---------------
echo "$NO_OF_ARGS"

for arg in "$@"
do
        echo "$arg"
done


# 2 ---------------
for index in `seq 1 8`; do 
    echo $index "$index"
done;


# 3 ---------------
arr=("element1" "element2" "element3")
for i in "${arr[@]}"; do
    echo $i
done

# 4 ---------------
str="this example 
demonstrates the example of for
loop where white space is considered as separators."
for i in $str; do
    echo $i
done

# 5 --------------- at both places use "" double quotes.
for i in "$str"; do
    echo "$i"
done

# 5 ---------------
numArr=(1 2 3 4)
arrLen="${#numArr[@]}"

for ((i = 0; i < $arrLen; i++)); do
    
    if [ ${numArr[$i]} -eq 3 ]; then
        break
    fi
    echo numArr [ $i ] = ${numArr[$i]}
done









