printf "$(tput setaf 2)\n Setting Gnome settings...\n"
gsettings set org.gnome.shell favorite-apps ["google-chrome.desktop", "sublime_text.desktop", "com.mitchellh.ghostty.desktop", "dbeaver-ce.desktop", "org.gnome.Nautilus.desktop", "spotify.desktop", "slack.desktop", "signal-desktop.desktop", "localsend_app.desktop"]

gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.desktop.calendar show-weekdate true

gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Control>l']"

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-purple-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-purple'
printf "$(tput setaf 2)\n Gnome settings successfully set...\n"
