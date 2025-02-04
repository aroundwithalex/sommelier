printf "$(tput setaf 2)\n Installing dbeaver\n\n"
wget -q https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm
sudo dnf install -y dbeaver-ce-latest-stable.x86_64.rpm
printf "$(tput setaf 2)\n dbeaver successfully installed\n\n"
