printf "$(tput setaf 1)\n Removing Neovim...\n"

sudo dnf remove -y neovim-*
sudo dnf remove -y python3-neovim*

printf "$(tput setaf 1)\n Neovim successfully removed \n"