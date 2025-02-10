printf "$(tput setaf 2)\n Installing Slack...\n"

VERSION=4.41.105

wget https://downloads.slack-edge.com/desktop-releases/linux/x64/$(VERSION)/slack-desktop-$(VERSION)-amd64.deb

sudo apt install -y ./slack-desktop-*.deb

printf "$(tput setaf 2)\n Slack successfully installed\n
"
