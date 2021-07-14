#!/bin/bash

<<com
problem statement:
    . print out something and write or append it to a file.
    . read all contents from the file and print.
    . read the file  line by line using while loop.
    . check if the given file_name exists.
com

echo # 1 ----------
file_name='./resources/output-text.txt';
echo "Hi This is a sample file write operation done on `date +"[%d-%m-%y %H:%M:%S]"` \n" > $file_name;
echo "also appending this text after its written to the file. " >> $file_name;

echo # 2 ----------
# There are 2 ways to read a file. cat and < operator.
text=`cat $file_name`;  # method 1
text="$(<$file_name)";  # method 2
echo $text;

delimiter="]";
tail="${text#*$delimiter}"
head="${text%%$delimiter*}"
echo head: $head;
echo tail: $tail;

echo # ps 3 ---------- 
i=1;
while read line; do
    echo ln $i: $line
    i=$(( i + 1 ));
done < $file_name;

echo preventing backslashes with -r flag.
while read -r line; do
    echo $line;
done < $file_name;

echo preventing trimming of leading or trailing whitespaces. by using IFS global variable in conjunction.
while IFS= read -r line; do
    echo $line;
done < $file_name;

echo # 4 ------   use -e command to check if the file exists.

if [ -e $file_name ]; then
    echo "File exists";
else
    echo "File does not Exist!";
fi;

echo # 5 ------   use -d command to check if the give name is a directory.

if [ -d $file_name ]; then
    echo $file_name is a directory;
else
    echo $file_name is not a directory;
fi;

echo # 6 ------   use -r command to check if the give filename is a readable.

if [ -r $file_name ]; then
    echo $file_name is readable;
else
    echo $file_name is not readable;
fi;














