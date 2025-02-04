printf "$(tput setaf 2)\n Installing fonts\n"
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaMono
cp CascadiaMono/*.ttf ~/.local/share/fonts/cascadia-mono

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
unzip FiraCode.zip -d FiraCode
cp CascadiaMono/*.ttf ~/.local/share/fonts/fira-code

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip
unzip UbuntuMono.zip -d UbuntuMono
sudo cp UbuntuMono/*.ttf /usr/share/fonts/ubuntu-mono
printf "$(tput setaf 2)\n Fonts successfully installed\n"