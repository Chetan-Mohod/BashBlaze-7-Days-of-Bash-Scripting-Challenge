#!/bin/bash


<< Part1

Part 1: File and Directory Exploration
Upon execution without any command-line arguments, the script will display a welcome message and list all the files and directories in the current path.
For each file and directory, the script will print its name and size in human-readable format (e.g., KB, MB, GB). This information will be obtained using the ls command with appropriate options.
The list of files and directories will be displayed in a loop until the user decides to exit the explorer.

Part1


while true; do

        echo "Files and directory in current path:"
        ls -lh | awk '{print $5, $9}'

<<Part2

Part 2: Character Counting
1.After displaying the file and directory list, the script will prompt the user to enter a line of text.
2.The script will read the user's input until an empty string is entered (i.e., the user presses Enter without any text).
3.For each line of text entered by the user, the script will count the number of characters in that line.
4.The character count for each line entered by the user will be displayed.

Part2

#Taking input from user
read -p "Enter a line of text: ( the user presses Enter without any text )" input


#Checking if user gives input or not, Exit if the user enters an empty string
if [ -z $input ]; then   #-z option in checks if a string is empty.
        echo "Exited the Interactive Explorer."
        break
fi


#Char count from user input
char_count=$(echo -n $input | wc -m)

# The echo -n command prints the value of the variable input without adding a newline at the end.
#wc -m: wc stands for word count, but with the -m option, it counts the number of characters in the input.

echo "Character count is : $char_count"


done
