 #!/bin/bash

dpkg -l | grep -i docker

sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin

sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock

#To find any potentially remaining files, you can run-> It is usefull to search all files related to any name given in cmd, for eg: if want to see python related file than can add python instead of docker
#sudo find / -name "*docker*"

