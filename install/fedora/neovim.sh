echo "\n\n Installing neovim...\n\n"
sudo dnf install -y neovim python3-neovim

echo "alias 'vi=nvim'" | tee -a ~/.config/fish/config.fish
echo "\n\n neovim successfully installed\n\n"
