printf "$(tput setaf 2)\n Installing Fish shell\n"
brew install fish

printf "$(tput setaf 2)\n Changing shell to Fish\n"
sudo chsh -s $(which fish)

printf "$(tput setaf 2)\n Fish successfully installed and shell changed\n"