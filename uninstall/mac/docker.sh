printf "$(tput setaf 1)\n Removing Docker...\n"

/Applications/Docker.app/Contents/MacOS/uninstall
rm -rf ~/Library/Group\ Containers/group.com.docker
rm -rf ~/.docker

brew uninstall colima

printf "$(tput setaf 1)\n Docker successfully removed \n"