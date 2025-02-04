printf "$(tput setaf 1)\n Removing Dracula...\n"
rm -rf ~/.config/fish/themes/Dracula\ Official.theme
sed "\fish_config theme choose 'Dracula Official'\d" ~/.config/fish/config.fish
printf "$(tput setaf 1)\n Dracula successfully removed...\n"
