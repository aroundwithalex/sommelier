printf "$(tput setaf 2)\n Installing Slack...\n"

wget https://downloads.slack-edge.com/desktop-releases/linux/x64/4.41.105/slack-desktop-4.41.105-amd64.deb

sudo apt install -y ./slack-desktop-*.deb

printf "$(tput setaf 2)\n Slack successfully installed\n
"
