echo "\n\n Installing neovim...\n\n"
brew install neovim

echo "alias 'vi=nvim'" | tee -a ~/.config/fish/config.fish
echo "\n\n neovim successfully installed\n\n"
