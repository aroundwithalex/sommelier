printf "$(tput setaf 2)\n Installing Fish shell\n"

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

printf "$(tput setaf 3)\n Changing shell to Fish\n"
sudo chsh -s $(which fish)

printf "$(tput setaf 2)\n Fish successfully installed and shell changed\n"