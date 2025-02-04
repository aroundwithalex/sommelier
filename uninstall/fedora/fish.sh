printf "$(tput setaf 1)\n Removing Fish...\n"

sudo dnf remove -y fish-*

printf "$(tput setaf 3)\n Switching shell to Bash\n"
sudo chsh -s $(which bash)

printf "$(tput setaf 1)\n Fish successfully removed \n"