printf "$(tput setaf 2)\n Installing terminal tools (ripgrep etc) \n"

sudo apt install -y fastfetch ripgrep gh fzf bat eza zoxide plocate btop

zoxide init fish | source

gh auth login

printf "$(tput setaf 2)\n Successfully installed terminal tools\n"
