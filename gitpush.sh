echo "running git add"
git add .

read -p "Enter git commit message: " input

echo "running git commit"
git commit -m "$input"

echo "running git push"
git push
