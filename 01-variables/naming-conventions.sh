#!/usr/bin/env bash
# naming-conventions.sh - TODO: add examples

#variables should be with letter or underscore, not with number or special characters
#valid variable names
my_variable="Hello, World!"
anotherVariable=42
_variable_with_underscores="Bash Scripting"
VAR_WITH_UPPERCASE="This is valid too"
var123="Numbers are allowed but not at the start"
snake_case_variable="Common in bash scripts"
camelCaseVariable="Also common in programming"
PascalCaseVariable="Less common in bash, but valid"

#Invalid variable names (uncomment to see errors)
#1st_variable="Invalid in bash, will cause errors" # Starts with a number, not allowed
#kebab-case-variable="Invalid in bash, will cause errors" # Dashes are not allowed
#var with spaces="Invalid in bash, will cause errors" # Spaces are not allowed
#var$pecial="Invalid in bash since special characters like '$' are not allowed" # Special characters are not allowed

echo "=== ReadOnly Variables (Constants) ==="
declare -r PI=3.14
echo "PI is $PI"

# Attempting to change a readonly variable will cause an error
PI=3.17
echo "Pi is $PI"
#You will see an error like:
#01-variables/naming-conventions.sh: line 25: PI: readonly variable and prints the old value of PI

echo "=== Environment Variables ==="
#Environment variables are usually in UPPERCASE by convention
echo "Home directory is $HOME"
echo "Path is $PATH"
echo "Shell is $SHELL"
echo "User is $USER"2
echo "Language is $LANG"
echo "Terminal type is $TERM"
echo "Working directory is $PWD"
echo "OS type is $OSTYPE"
echo "Hostname is $HOSTNAME"

# Note: Avoid using names of existing environment variables for your local variables to prevent confusion
# For example, avoid using names like PATH, HOME, USER, etc. for your local variables
# This helps in maintaining clarity and avoiding unintended side effects in your scripts

echo "=== Interger Variables ==="
# Declare an integer variable
declare -i count=1000
count+=50
echo "count is $count"
# You can also do arithmetic directly
#count=$(count/2) - doesnt work
#(( ... )) is arithmetic expansion in Bash.
count=$((count*2))
echo "Multiplication of count with 2: $count"

echo "=== Exported Variables ==="
# Exported variables are in UPPERCASE by convention
declare -x API="your_api_key_here"
echo "API is $API"
# You can check if a variable is exported using 'export -p' command
bash -c 'export -p | grep API'
bash -c 'echo "Child process sees API as: $API"'

#In bash export and declare -x are similar, but not exactly the same.


echo "=== Inspect Variables ==="
# Use declare -p to inspect variable attributes
declare -p PI # readonly
declare -p count #integer    
declare -p API #exported