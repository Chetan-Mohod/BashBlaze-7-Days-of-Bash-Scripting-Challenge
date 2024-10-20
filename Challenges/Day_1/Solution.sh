#!/bin/bash

#Above command we called it as Shebang. First line of the script is the shebang which tells the system how to execute

<<Task1
 Comments
#In bash scripts, comments are used to add explanatory notes or disable certain lines of code. Your task is to create a bash script with comments explaining what the script does.
Task1

#---------------------------------------------------------------------------------------------------------------------------------
<<Task2
Echo

The echo command is used to display messages on the terminal. Your task is to create a bash script that uses echo to print a message of your choice.

Task2

#---> Solution:

echo "Hey, my name is Chetan"

#---------------------------------------------------------------------------------------------------------------------------------

<<Task3

Variables

Variables in bash are used to store data and can be referenced by their name. Your task is to create a bash script that declares variables and assigns values to them.

Task3

#---> Solution:
#
variable_a=10
variable_b=50

#---------------------------------------------------------------------------------------------------------------------------------

<<Task4

Using Variables
Now that you have declared variables, let's use them to perform a simple task. Create a bash script that takes two variables (numbers) as input and prints their sum using those variables.

Task4
<< BadMethod
read -p "Enter var1 value: " var1

read -p "Enter var2 value: " var2

Sum=$((var1+var2))

echo "Sum of 2 numbers is : $Sum"

BadMethod

#Correct Method
#
read -p "Enter var1 value: " var1

read -p "Enter var2 value: " var2

bc <<< "$var1 + $var2"

#---------------------------------------------------------------------------------------------------------------------------------

<<Task5

Using Built-in Variables

Bash provides several built-in variables that hold useful information. Your task is to create a bash script that utilizes at least three different built-in variables to display relevant information.

Task5

echo "The process ID of the current shell is $$"

echo "The process ID of the current shell is $?"

echo "Username of the current user is $USER"

echo "The Home directory of the current user is $HOME"

echo "The current working directory is $PWD"

echo "The search path for commands is $PATH "

echo "My hostname is $HOSTNAME"

echo "My script name is $0"

echo "Bash version I'm using is $BASH_VERSION"

#---------------------------------------------------------------------------------------------------------------------------------

<<Task6

Wildcards

Wildcards are special characters used to perform pattern matching when working with files. Your task is to create a bash script that utilizes wildcards to list all the files with a specific extension in a directory.

Task6

echo "List all files which have .sh extension: "
ls *.sh

echo ""

echo "List all files: "
ls *
