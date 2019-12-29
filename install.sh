wget "https://raw.githubusercontent.com/William-Mou/unzi/master/unzi.sh" -O ~/.unzi.sh 
chmod +x ~/.unzi.sh
echo "alias unzi="~/.unzi.sh"" >> ~/.bashrc && echo "load bashrc"
echo "alias unzi="~/.unzi.sh"" >> ~/.zshrc && echo "load zshrc"
`$SHELL`
