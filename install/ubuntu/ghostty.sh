echo "\n\n Installing ghostty\n\n"
source /etc/os-release
ARCH=$(dpkg --print-architecture)
GHOSTTY_DEB_URL=$(
   curl -s https://api.github.com/repos/mkasberg/ghostty-ubuntu/releases/latest | \
   grep -oP "https://github.com/mkasberg/ghostty-ubuntu/releases/download/[^\s/]+/ghostty_[^\s/_]+_${ARCH}_${VERSION_ID}.deb"
)
GHOSTTY_DEB_FILE=$(basename "$GHOSTTY_DEB_URL")
curl -LO "$GHOSTTY_DEB_URL"
sudo dpkg -i "$GHOSTTY_DEB_FILE"
echo "\n\n ghostty successfully installed\n\n"

cd ../../cfgs/ghostty

cp config ~/.config/ghostty/
