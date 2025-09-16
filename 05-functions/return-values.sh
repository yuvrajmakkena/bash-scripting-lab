#!/bin/bash
# Demonstrates return values via exit codes vs echo

# Function returning a number via exit status
is_even() {
    if (( $1 % 2 == 0 )); then
        return 0    # success
    else
        return 1    # failure
    fi
}

is_even 4
echo "Exit code for 4: $?"   # 0 = even

is_even 5
echo "Exit code for 5: $?"   # 1 = odd

# Function returning a string via echo
add() {
    echo $(($1 + $2))
}

sum=$(add 5 7)
echo "Sum of 5 and 7: $sum"
