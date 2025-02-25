printf "$(tput setaf 2)\n Installing localsend\n"
VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
wget -O localsend.deb "https://github.com/localsend/localsend/releases/latest/download/LocalSend-${VERSION}-linux-x86-64.deb"
sudo apt install -y ./localsend.deb
printf "$(tput setaf 2)\n localsend successfully installed\n"
