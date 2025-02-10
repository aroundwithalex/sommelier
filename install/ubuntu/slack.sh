printf "$(tput setaf 2)\n Installing Slack...\n"
wget -q https://slack.com/downloads/instructions/linux?ddl=1&build=deb

mv linux?ddl* slack-ubuntu.deb

sudo apt install -y ./slack-ubuntu.deb

printf "$(tput setaf 2)\n Slack successfully installed\n
"
