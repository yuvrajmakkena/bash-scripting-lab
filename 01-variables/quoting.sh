#!/usr/bin/env bash
# quoting.sh - Demonstrates various types of quoting in Bash scripting

echo "=== Double Quotes (\") ==="
# Double quotes preserve spaces but allow variable interpolation
name="John Doe"
echo "Hello $name"  # Variables are expanded
echo "Current directory: $(pwd)"  # Command substitution works
echo "Path is: $PATH"  # Environment variables work

echo -e "\n=== Single Quotes (') ==="
# Single quotes preserve everything literally
echo 'Hello $name'  # Variable is not expanded
echo 'Current directory: $(pwd)'  # Command substitution doesn't work
echo 'Special chars: * ? $ [ ] ( ) { } > <'  # Special characters preserved

echo -e "\n=== No Quotes ==="
# No quotes - word splitting and globbing occur
files=*  # Globbing happens
echo Current files: $files  # Word splitting happens on spaces
echo "Same files quoted: $files"  # No word splitting

echo -e "\n=== Escaping Special Characters ==="
# Escape special characters with backslash
echo "Price: \$100"  # Dollar sign escaped
echo "This is a \"quoted\" word"  # Quotes escaped
echo "First line\nSecond line"  # Newline character
echo "Tab\tspacing"  # Tab character

echo -e "\n=== Here Document (heredoc) ==="
# Preserve formatting with heredoc
cat << 'EOF'
This is a heredoc
$name is not expanded
Special chars: * ? $ [ ]
   Spacing is preserved
EOF

# Compare with expanded heredoc
cat << EOF
This is a heredoc
$name is expanded
Current dir: $(pwd)
   Spacing is preserved
EOF

echo -e "\n=== Word Splitting Examples ==="
# Demonstrate word splitting behavior
fruits="apple banana cherry"
# Without quotes - splits into separate arguments
for fruit in $fruits; do
    echo "Processing: $fruit"
done

# With quotes - preserves as single argument
echo "With quotes: $fruits"

echo -e "\n=== Common Pitfalls ==="
# Common mistake: forgetting quotes with file names
touch "file with spaces.txt"
# Wrong (will fail if spaces in filename):
rm file with spaces.txt 2>/dev/null
# Correct:
rm "file with spaces.txt"

echo -e "\n=== Variable Assignment ==="
# No spaces around = in assignment
valid_var="correct"  # Works
# invalid_var = "wrong"  # Would fail - spaces not allowed

echo -e "\n=== Path Handling ==="
# Always quote paths, especially those with potential spaces
directory="/path/with spaces"
# Correct:
ls "$directory"  # Safe
# Wrong:
ls $directory 2>/dev/null  # Dangerous with spaces
