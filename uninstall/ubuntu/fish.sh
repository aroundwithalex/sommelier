printf "$(tput setaf 1)\n Removing Fish...\n"

sudo apt remove -y fish-*

sudo chsh -s $(which bash)

printf "$(tput setaf 1)\n Fish successfully removed \n"