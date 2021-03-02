clear
sudo dnf update
sudo dnf install WoeUSB dmg2img
sudo cp -r /$PWD/flash /usr/bin/
sudo chmod +x /usr/bin/flash
clear
echo 'Installation complete! To start flashall type: flash'
