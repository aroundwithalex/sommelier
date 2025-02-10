printf "$(tput setaf 2)\n Installing terminal tools (ripgrep etc) \n"

sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install -y fastfetch

sudo apt install -y ripgrep gh fzf bat eza zoxide plocate btop

zoxide init fish | source

gh auth login

printf "$(tput setaf 2)\n Successfully installed terminal tools\n"
