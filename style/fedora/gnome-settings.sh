printf "$(tput setaf 2)\n Setting Gnome settings...\n"
gsettings set org.gnome.shell favorite-apps '["google-chrome.desktop", "sublime_text.desktop", "com.mitchellh.ghostty.desktop", "dbeaver-ce.desktop", "org.gnome.Nautilus.desktop", "org.gnome.Settings.desktop"]'

gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.desktop.calendar show-weekdate true

gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Control>l']"

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'
printf "$(tput setaf 2)\n Gnome settings successfully set...\n"
