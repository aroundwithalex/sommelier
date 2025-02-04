printf "$(tput setaf 2)\n Installing fonts\n"
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaMono
sudo mkdir -p /usr/share/fonts/cascadia-mono
sudo cp CascadiaMono/*.ttf /usr/share/fonts/cascadia-mono

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
unzip FiraCode.zip -d FiraCode
sudo mkdir -p /usr/share/fonts/fira-code
sudo cp CascadiaMono/*.ttf /usr/share/fonts/fira-code

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip
unzip UbuntuMono.zip -d UbuntuMono
sudo mkdir -p /usr/share/fonts/ubuntu-mono
sudo cp UbuntuMono/*.ttf /usr/share/fonts/ubuntu-mono
printf "$(tput setaf 2)\n Fonts successfully installed\n"