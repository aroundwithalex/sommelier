echo "\n\n Installing fonts\n\n"
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaMono
cp CascadiaMono/*.ttf ~/.local/share/fonts

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
unzip FiraCode.zip -d FiraCode
cp CascadiaMono/*.ttf ~/.local/share/fonts

wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip
unzip UbuntuMono.zip -d UbuntuMono
cp UbuntuMono/*.ttf ~/.local/share/fonts
echo "\n\n Fonts successfully installed\n\n"