printf "$(tput setaf 2)\n Installing ghostty\n"
sudo dnf copr enable pgdev/ghostty
sudo dnf install -y ghostty
echo "$(tput setaf 2)\n ghostty successfully installed\n"

cd ../../cfgs/ghostty

cp config ~/.config/ghostty/
