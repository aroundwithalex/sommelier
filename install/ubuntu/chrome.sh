printf "$(tput setaf 2)\n Installing Google Chrome...\n"

wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y google-chrome-stable_current_amd64.deb

printf "$(tput setaf 2)\n Google Chrome successfully installed \n"
