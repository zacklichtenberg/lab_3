#!/bin/bash
# Authors : Zack Lichtenberg
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#Problem 1
echo "Input a file name:"
read filename
echo "Enter a regular expression:"
read regexp

#Problem 2
grep $regexp $filename

#Problem3
numphone=$(grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $filename)
echo "Numphone#s: $numphone"

#Problem 4:
numemails=$(grep -c '@' $filename)
echo "Numemails: $numemails"

num303=$(grep -o '303-[0-9]\{3\}-[0-9]\{4\}' $filename)
echo "List of 303 #s: $num303"

grep "geocities.com" $filename >> email_results.txt
