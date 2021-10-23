#!/bin/bash

## if we assign a name to a set of data, then that is variable
# SYNTAX: VAR=DATA

# Number
a=100
# String
b=abc

# in bash shell and also by default there are no data types, Shell considers everything as string
# Access the data in shell using 3 character prefixing the variable name, Or you can also access variable with ${}

echo value of a = $a
echo value of b = $b

echo value of a =${a}

x=12
y=49
echo ${x}X${y} = 588

DATE=10-20-2021
echo Good morning, Welcome, Today date is $DATE

