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
# Print OS information
if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    echo "OS: $NAME $VERSION"
else
    echo "OS: Unknown (no /etc/os-release found)"
fi

declare -a deps=("awk" "sed" "grep" "bc")
