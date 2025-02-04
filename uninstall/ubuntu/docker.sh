printf "$(tput setaf 1)\n Removing Docker...\n"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do 
        sudo apt-get remove -y $pkg; 
done
sudo groupdel docker
printf "$(tput setaf 1)\n Docker successfully removed \n"