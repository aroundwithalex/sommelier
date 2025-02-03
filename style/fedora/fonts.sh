echo "\n\n Installing fonts\n\n"
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaMono
sudo cp CascadiaMono/*.ttf /usr/share/fonts

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
unzip FiraCode.zip -d FiraCode
sudo cp CascadiaMono/*.ttf /usr/share/fonts

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip
unzip UbuntuMono.zip -d UbuntuMono
sudo cp UbuntuMono/*.ttf /usr/share/fonts
echo "\n\n Fonts successfully installed\n\n"