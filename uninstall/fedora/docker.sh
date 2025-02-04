printf "$(tput setaf 1)\n Removing Docker...\n"
sudo dnf remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo groupdel docker
printf "$(tput setaf 1)\n Docker successfully removed \n"