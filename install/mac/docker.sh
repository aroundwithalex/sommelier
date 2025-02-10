printf "$(tput setaf 2)\n Installing Docker...\n"

wget https://desktop.docker.com/mac/main/amd64/Docker.dmg

mv /tmp/sommelier/Docker.dmg* /tmp/sommelier/Docker.dmg

sudo hdiutil attach /tmp/sommelier/Docker.dmg
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
sudo hdiutil detach /Volumes/Docker

brew install colima

printf "$(tput setaf 2)\n Docker successfully installed\n"

