echo "INFO: cp ideavimrc and zshrc to this directory"
cp ~/.ideavimrc ./
cp ~/.zshrc ./
cp ~/.config/Code/User/settings.json ~/.config/Code/User/keybindings.json ./
echo "INFO: upload to github repo"
git add .
git commit -m "`date`"
git push origin main
