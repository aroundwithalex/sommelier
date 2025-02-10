printf "$(tput setaf 2)\n Adding sommelier aliases\n"
echo "alias sommelier-update='~/.local/share/sommelier/update.sh'" >> ~/.config/fish/config.fish
echo "alias sommelier-install='~/.local/share/sommelier/install.sh'" >> ~/.config/fish/config.fish
echo "alias sommelier-uninstall='~/.local/share/sommelier/uninstall.sh'" >> ~/.config/fish/config.fish
echo "alias sommelier-help='~/.local/share/sommelier/help.sh'" >> ~/.config/fish/config.fish
printf "$(tput setaf 2)\n Aliases added\n"