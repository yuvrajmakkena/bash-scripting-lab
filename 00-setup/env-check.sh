#!/bin/bash
# above line is called shebang

#Read more about strict mode in 10-error-handling/strict-mode.sh
# Default: exit on unset vars and enable pipefail
set -uo pipefail
echo "Running environment check..."

#Check if we are running on bash
if [ -z "$BASH_VERSION" ]; then
  echo "This script requires bash. Please run it with bash."
  exit 1
else
  echo "Bash version: $BASH_VERSION"
fi


# Print OS information
if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    echo "OS: $NAME $VERSION"
else
    echo "OS: Unknown (no /etc/os-release found)"
fi


# Dependencies to check, an array of commands is defined, a is not a valid command and will show missing dep
declare -a deps=("awk" "sed" "grep" "bc" "a")

missing="" # Flag to track missing dependencies
echo "Checking for required dependencies..."

#Function to check if a command exists
#dep is a parameter to the function initialized when function is called
# iterate over each dependency, @ symbol is used to get all elements of array
# &>/dev/null redirects both stdout and stderr to /dev/null, silencing output
# command -v checks if command is available in PATH, ! negates the exit status, so if command is not found, the condition is true

for dep in "${deps[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
        echo "Missing dep: $dep"
        missing=1
    else
        echo "Found: $dep"
    fi
done

# If any dependency is missing, exit with error, -n checks if string is non-empty
if [[ -n $missing ]]; then
    echo "Some dependencies are missing"
    exit 1
fi
