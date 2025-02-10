printf "$(tput setaf 2)\n Installing neovim...\n"
sudo apt install -y neovim python3-neovim

echo "alias 'vi=nvim'" | tee -a ~/.config/fish/config.fish
printf "$(tput setaf 2)\n neovim successfully installed\n"
