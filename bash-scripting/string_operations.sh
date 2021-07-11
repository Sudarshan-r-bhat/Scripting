#!/bin/bash

<<comments
problem statement:
    1) display the length of the string in different ways.
    2) check if 2 strings are equal
    3) split string based on delimiters and print 'em
    4) do string concatenation and print 'em
    5) get the substring of string and print 'em
comments

# 1 -----------
str="hello world"
echo Length of the string \"$str\" is = "${#str}"   # 1

echo Length of the string \"$str\" is = `expr length "$str"`  # 2

length=`expr "$str" : ".*"`  # 3
echo Length of the string \"$str\" is = $length


# 2 -----------
# NOTE: SINGLE QUOTE AND DOUBLE QUOTED STRINGS ARE NOT THE SAME.!!
s1="hello world"
s2='hi world'
s3='hello world'

if [ s1 == s3 ]; then 
    echo s1 and s3 are equal
elif [ s1 != s2 ]; then 
    echo s1 and s2 are not equal is True
fi

if [ "$s1" == "$s3" ]; then 
    echo s1 and s3 are equal
fi


# 3 -----------
<<com 

NOTE: IFS is an internal variable, that determines the word boundaries.
 -r : escape \ , 
 -a : read into an array, based on pre set delimiter.
com

str="this is a string Im learning how to split them into an array of string"
IFS=' '
read -ra stringArr <<< "$str"
for token in "${stringArr[@]}"; do
    echo $token 
done

# when the delimiter is a string.
echo =========================================================================
echo string split based on delimiter string.
<<com
pseudo code:
    method 1:
    . make a string end with the delimiter
    . push every first match to the array and retain the tail.
    . break when the string length is 0
    method 2:
    . by matching the substring with the delimiter.
    . when ever the substring matches, mark that as the start  of new element.
    . and the index of the next match will give you the end index.
com

str="THISabcISabcAabcSTRING"
delimiter="abc"

s=$str$delimiter # concetanation

# parameter%%word : removes the longest matching suffix pattern.
# 'parameter#delimiter' : removes the shortest matching prefix pattern.
echo The RegEx in bash scripting to match the fist occurances "${s#*$delimiter}", ${s%%"$delimiter"*}

array=();
while [ "${#s}" -gt 0 ]; do
    el="${s%%"$delimiter"*}"
    array+=("$el")
    s="${s#*$delimiter}"
    echo length of the string is = "${#s}", $s
done

declare -p array

for elems in "${array[@]}"; do echo $elems; done

# method 2

s="THISabcISabcAabcSTRING"
delimiter="abc"

s=$s$delimiter
slen="${#s}"
dlen="${#delimiter}"

echo ========= method 2 =========  $dlen

currentIndex=0
wordLen=0
echo length of the string is "${#s}"

while [ $currentIndex -lt "${#s}" ]; do
    # echo index=$currentIndex effective  len = $((currentIndex + dlen)) 
    if [ "$delimiter" == "${s:$currentIndex:$dlen}" ]; then
        echo "${s:$(( currentIndex - wordLen )):wordLen}"
        currentIndex=$(( currentIndex + dlen ));
        wordLen=0;
    fi;

    currentIndex=$(( currentIndex + 1 ))
    wordLen=$(( wordLen + 1))

done;






