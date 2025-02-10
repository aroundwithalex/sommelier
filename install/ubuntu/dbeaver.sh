printf "$(tput setaf 2)\n Installing dbeaver\n"
wget -q https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo dnf install -y ./dbeaver-ce_latest_amd64.deb
printf "$(tput setaf 2)\n dbeaver successfully installed\n"
