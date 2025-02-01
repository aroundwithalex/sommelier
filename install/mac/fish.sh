echo "\n\n Installing Fish shell\n\n"
brew install fish

echo "\n\n Changing shell to Fish\n\n"
sudo chsh -s $(which fish)

echo "\n\n Fish successfully installed and shell changed\n\n"