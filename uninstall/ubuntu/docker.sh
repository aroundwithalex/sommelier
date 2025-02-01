echo "\n\n Removing Docker...\n\n"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do 
        sudo apt-get remove -y $pkg; 
done
echo "\n\n Docker successfully removed \n\n"