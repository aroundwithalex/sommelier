echo "\n\n Removing Fish...\n\n"

sudo dnf remove fish-*

sudo chsh -s $(which bash)

echo "\n\n Fish successfully removed \n\n"