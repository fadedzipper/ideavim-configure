cp ~/.ideavimrc ./
cp ~/.zshrc ./
echo "have cp ideavimrc and zshrc to this directory"
git add .
git commit -m "`date`"
git push origin main
echo "upload to github repo"
