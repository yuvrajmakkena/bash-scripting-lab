#Variables
#UPPERCASE by convention for environment variables
#lowercase for local variables
#No spaces around the equal sign
name="Yuvraj"
#Use the variable with $ sign - variable interpolation
#echo is a shell builtin
echo "I am $name"
#printf is also a shell builtin
#More control over formatting
printf '%s\n' "I am $name"


#Parameter Expansion - ShortHand specifiers - convenience aliases
#Eg: %F is equivalent to %Y-%m-%d  
today="$(date)"
today_sh="$(date +%F)"
echo "Today's date is $today_sh"
#Prints as it is with spaces -- the splitting happens when you use the variable, not when you assign it
printf '%s\n' $today
#Prints in one line since in quotes without considering spaces
printf '%s\n' "$today"
