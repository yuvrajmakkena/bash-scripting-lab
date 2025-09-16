factorial() {
    if (($1 <= 1)); then
        echo 1
    else
        local temp=$(( $1 - 1 ))
        local prev=$(factorial $temp)
        echo $(( $1 * prev ))
    fi
}

read -p "Enter a number: " num
result=$(factorial $num)
echo "Factorial of $num is $result"
