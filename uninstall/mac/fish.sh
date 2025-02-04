printf "$(tput setaf 1)\n Removing Fish shell\n"
brew uninstall fish

sudo chsh -s $(which zsh)

printf "$(tput setaf 1)\n Fish successfully removed\n"