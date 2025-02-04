printf "$(tput setaf 2)\n Installing Slack...\n"
wget -q https://slack.com/downloads/instructions/linux?ddl=1&build=deb

sudo apt install -y slack-*.deb

printf "$(tput setaf 2)\n Slack successfully installed\n
"