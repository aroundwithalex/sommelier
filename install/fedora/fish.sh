printf "$(tput setaf 2)\n Installing Fish shell\n"
sudo dnf install -y fish

if [ ! $SHELL == '/usr/bin/fish' ]; then
    echo "$(tput setaf 3)\n Changing shell to Fish\n"
    chsh -s /usr/bin/fish
fi

echo "$(tput setaf 2)\n Fish successfully installed and shell changed\n"
