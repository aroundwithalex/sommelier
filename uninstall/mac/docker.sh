echo "\n\n Removing Docker...\n\n"

/Applications/Docker.app/Contents/MacOS/uninstall
rm -rf ~/Library/Group\ Containers/group.com.docker
rm -rf ~/.docker

brew uninstall colima

echo "\n\n Docker successfully removed \n\n"