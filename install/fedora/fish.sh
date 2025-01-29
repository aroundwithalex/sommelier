echo "\n\n Installing Fish shell\n\n"
sudo dnf install -y fish

echo "\n\n Changing shell to Fish\n\n"
chsh -s $(which fish)

echo "\n\n Fish successfully installed and shell changed\n\n"
