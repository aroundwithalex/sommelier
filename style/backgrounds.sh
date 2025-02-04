printf "$(tput setaf 2)\n Installing desktop backgrounds\n"
git clone https://github.com/aroundwithalex/desktop-backgrounds.git --single-branch /tmp/desktop-backgrounds > /dev/null

cd /tmp/desktop-backgrounds
cp *.webp ~/Pictures
printf "$(tput setaf 2)\n Desktop backgrounds successfully installed\n"
