echo "\n\n Installing terminal tools (ripgrep etc) \n\n"

sudo apt install -y fastfetch ripgrep gh fzf bat eza zoxide plocate btop

zoxide init fish | source

gh auth

echo "\n\n Successfully installed terminal tools\n\n"
