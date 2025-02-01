echo "\n\n Installing Fish shell\n\n"

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

echo "\n\n Changing shell to Fish\n\n"
sudo chsh -s $(which fish)

echo "\n\n Fish successfully installed and shell changed\n\n"