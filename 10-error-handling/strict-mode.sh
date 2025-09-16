#!/bin/bash
# above line is called shebang

# Default: exit on unset vars and enable pipefail
set -uo pipefail

echo "==== Demo: pipefail ===="
(set +e; true | false; echo "Exit code of true|false pipeline: $?, true succeeded but false failed")

echo
echo "==== Demo: -e (exit on error) ===="
(set -e; false; echo "This will NOT print because -e stops after 'false'")
echo "Continuing after subshell with -e"

echo
echo "==== Demo: -u (unset variable) ===="
(set -u; echo "Value is: $UNSET_VAR"; echo "This will NOT print because -u aborts on unset vars")

echo
echo "==== Normal successful command ===="
ls /tmp
echo "Exit code of ls: $?"
