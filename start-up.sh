apt update
apt upgrade

echo "Change root password"
passwd

adduser luke

usermod -aG sudo luke

mkdir -p /home/luke/.ssh
cp /root/.ssh/authorized_keys /home/luke/.ssh/
chown -R luke:luke /home/luke/.ssh
chmod 700 /home/luke/.ssh
chmod 600 /home/luke/.ssh/authorized_keys

echo "Rebooting"
reboot 
