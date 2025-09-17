#!/bin/bash
# Demonstrates exporting variables to environment

rrr="SSR+NTR+RC in India"
export ssmb="SSR+MB in 120 Countries"

echo "====In Current Shell:===="
echo "In current shell: $ssmb"
echo "In current shell: $rrr"

#working way using single quotes to prevent variable expansion in current shell
echo "====In new sub shell:===="
bash -c 'echo In sub shell: $ssmb'
bash -c 'echo In sub shell: $rrr'  # will be empty since rrr is not exported

#Not working since double quotes allow variable expansion in current shell itself
echo "====In new sub shell:===="
bash -c "echo 'In sub shell: $ssmb'"
bash -c "echo 'In sub shell: $rrr'"  # will be empty since rrr is not exported

