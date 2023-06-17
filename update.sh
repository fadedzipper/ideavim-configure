cp ~/.ideavimrc ./
cp ~/.zshrc ./
echo "INFO: have cp ideavimrc and zshrc to this directory"
git add .
git commit -m "`date`"
git push origin main
echo "INFO: upload to github repo"
