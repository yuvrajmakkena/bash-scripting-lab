#!/usr/bin/env bash
# associative.sh - TODO: add examples

# Declare an associative array
declare -A user_info
user_info=(
    ["name"]="Alice"
    ["age"]=30
    ["city"]="Wonderland"
)
# Access and print values
echo "Name: ${user_info["name"]}"
echo "Age: ${user_info["age"]}"
echo "City: ${user_info["city"]}"

# Loop through keys and values
echo "User Info:"
for key in "${!user_info[@]}"; do
    echo "$key: ${user_info[$key]}"
done
# Add a new key-value pair
user_info["occupation"]="Adventurer"
echo "Updated User Info:"
for key in "${!user_info[@]}"; do
    echo "$key: ${user_info[$key]}"
done
# Remove a key-value pair
unset user_info["age"]
echo "After removing age:"
for key in "${!user_info[@]}"; do
    echo "$key: ${user_info[$key]}"
done
# Check if a key exists
if [[ -v user_info["city"] ]]; then
    echo "City is set to: ${user_info["city"]}"
else
    echo "City is not set."
fi
# Get the number of key-value pairs
echo "Number of entries in user_info: ${#user_info[@]}"
# Get all keys
echo "Keys: ${!user_info[@]}"
# Get all values
echo "Values: ${user_info[@]}"
# Clear the associative array
unset user_info
echo "After clearing, number of entries: ${#user_info[@]}"
# Note: Associative arrays are supported in Bash 4.0 and above.


