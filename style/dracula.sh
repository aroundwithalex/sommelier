wget -q https://github.com/dracula/fish/archive/master.zip

unzip master.zip -d Dracula

cp Dracula/themes/Dracula\ Official.theme ~/.config/fish/themes
echo "fish_config theme choose 'Dracula Official'" | tee -a ~/.config/fish/config.fish
