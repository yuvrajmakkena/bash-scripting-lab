#!/usr/bin/env bash
# command-substitution.sh - Demonstrates command substitution in Bash

echo "=== Command Substitution Examples ==="

# 1. Using backticks (older style, less preferred)
date_now=`date`
echo "Current date and time (backticks): $date_now"

# 2. Using $(...) (preferred style)
current_dir=$(pwd)
echo "Current directory: $current_dir"

# 3. Command substitution in arithmetic
num_files=$(ls -1 | wc -l)
echo "Number of files in current directory: $num_files"

# 4. Command substitution in strings
user_info="User: $(whoami), Home: $HOME"
echo "$user_info"

# 5. Nesting command substitutions
nested="Number of files reported via echo: $(echo $(ls -1 | wc -l))"
echo "$nested"

printf "\n=== End of Command Substitution Examples ===\n"
