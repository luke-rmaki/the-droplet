echo "Setting up auto-updates"
sudo apt install unattended-upgrades
sudo dpkg-reconfigure unattended-upgrades

sleep 1

echo "Installing docker"
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt install docker-ce

sleep 1

sudo systemctl status docker

sudo systemctl unattended-upgrades



echo "Set up completed"
