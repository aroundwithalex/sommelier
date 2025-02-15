printf "$(tput setaf 2)\n Installing ghostty\n"
sudo dnf copr enable pgdev/ghostty
sudo dnf install -y ghostty
cp ~/.local/share/sommelier/cfgs/ghostty/config ~/.config/ghostty/
printf "$(tput setaf 2)\n ghostty successfully installed\n"
