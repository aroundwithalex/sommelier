printf "$(tput setaf 2)\n Installing Google Chrome...\n"

wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf install -y google-chrome-stable_current_x86_64.rpm

printf "$(tput setaf 2)\n Google Chrome successfully installed \n"
