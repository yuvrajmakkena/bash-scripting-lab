#!/bin/bash
# Demonstrates local variables and scope

global_var="I am global"

show_vars() {
    local local_var="I am local"
    echo "Inside function: $global_var"
    echo "Inside function: $local_var"
}

show_vars

echo "Outside function: $global_var"
echo "Outside function: $local_var"  # will be empty
