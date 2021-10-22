#!/bin/bash

## To print some text on screen then we can use echo command or printf command
## We choose to go with echo command because of its less syntaxing

# syntax
# echo message to Print

echo hello baby
echo Ngoma

# ESC Sequences , /m (new line), /t(tab space) /e (new color)

#Syntax; echo -e "Message/nNew line"
# TO enable any esc seq we need to enable -e option
# Also the input should be in quotes, preferably double quote

echo -e "Hello Baby/nNgoma"

echo -e "word1\t\tword2"

# Colored Output
# syntax: echo -e "/e[ColnMessage"

#Colors    Code
# Red      31
# Green    32
# Blue     33
# Yellow   34
# Magenta  35
# Cyan     36

echo -e "\e[31mText in Red Color"
echo -e "\e[32mText in Green Color"
echo -e "\e[33mText in Blue Color"
echo -e "\e[34mText in Yellow Color"
echo -e "\e[35mText in Magenta Color"
echo -e "\e[36mText in Cyan Color"


