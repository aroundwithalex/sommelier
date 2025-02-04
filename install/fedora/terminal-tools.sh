printf "$(tput setaf 2)\n Installing terminal tools (ripgrep etc) \n"

sudo dnf install -y fastfetch ripgrep gh fzf bat eza zoxide plocate btop

zoxide init fish | source

gh auth

echo "$(tput setaf 2)\n Successfully installed terminal tools\n"
