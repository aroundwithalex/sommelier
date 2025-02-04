printf "$(tput setaf 1)\n Removing terminal tools (ripgrep etc) \n"

sudo dnf remove -y fastfetch ripgrep gh fzf bat eza zoxide plocate btop

printf "$(tput setaf 1)\n Successfully removed terminal tools\n"
