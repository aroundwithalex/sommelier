echo "\n\n Installing Sublime Text\n\n"
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager addrepo --from-repofile=https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text
echo "\n\n Sublime Text successfully installed\n\n"

cp ../../cfgs/sublime-text/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/
