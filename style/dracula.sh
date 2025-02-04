printf "$(tput setaf 2)\n Installing the Dracula theme...\n"
wget -q https://github.com/dracula/fish/archive/master.zip

unzip master.zip -d Dracula

if [ ! -d ~/.config/fish/themes ]; then
    mkdir ~/.config/fish/themes
fi

cp Dracula/fish-master/themes/Dracula\ Official.theme ~/.config/fish/themes
echo "fish_config theme choose 'Dracula Official'" | tee -a ~/.config/fish/config.fish
printf "$(tput setaf 2)\n Dracula theme successfully installed\n"
