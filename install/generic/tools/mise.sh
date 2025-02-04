printf "$(tput setaf 2)\n Installing Mise..."
curl https://mise.run | sh
 ~/.local/bin/mise --version
echo '~/.local/bin/mise activate fish | source' >> ~/.config/fish/config.fish
printf "$(tput setaf 2)\n Mise successfully installed"
