printf "$(tput setaf 2)\n Installing Fish shell\n"
sudo dnf install -y fish

echo "$(tput setaf 3)\n Changing shell to Fish\n"
sudo chsh -s $(which fish)

echo "$(tput setaf 2)\n Fish successfully installed and shell changed\n"
