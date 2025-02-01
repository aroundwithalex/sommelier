echo "\n\n Installing Sublime Text\n\n"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo "\n\n Sublime Text successfully installed\n\n"

cp ../../cfgs/sublime-text/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/
