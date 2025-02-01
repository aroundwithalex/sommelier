echo "\n\n Removing Fish shell\n\n"
brew uninstall fish

sudo chsh -s $(which zsh)

echo "\n\n Fish successfully removed\n\n"