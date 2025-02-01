echo "\n\n Installing Slack..."
wget -q https://slack.com/downloads/instructions/linux?ddl=1&build=deb

sudo apt install -y slack-*.deb

echo "\n\n Slack successfully installed\n\n"