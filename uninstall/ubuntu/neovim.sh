printf "$(tput setaf 1)\n Removing Neovim...\n"

sudo apt remove -y neovim-*
sudo apt remove -y python3-neovim*

printf "$(tput setaf 1)\n Neovim successfully removed \n"