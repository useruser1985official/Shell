sudo apt-get clean
sudo apt-get update
sudo dpkg --configure -a
sudo apt-get install -f
sudo apt --fix-broken install
sudo rm /var/cache/debconf/*.dat 
