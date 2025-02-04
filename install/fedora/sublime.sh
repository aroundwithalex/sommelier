printf "$(tput setaf 2)\n Installing Sublime Text\n"
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager addrepo --from-repofile=https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text
printf "$(tput setaf 2)\n Sublime Text successfully installed\n"

cp ../../cfgs/sublime-text/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/
