#Use set -u to treat unset variables as an error when substituting.
#This will cause the script to exit with an error if you try to use an undefined variable
#Uncomment the below line to see the effect of set -u

#set -u
echo "Hello $undefined_var"