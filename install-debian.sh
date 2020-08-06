clear
sudo apt install software-properties-common dmg2img dd -y
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install woeusb -y
sudo cp -r /$PWD/flash /usr/bin/
sudo chmod +x /usr/bin/flash
clear
echo 'Installation complete! To start flashall type: flash'
