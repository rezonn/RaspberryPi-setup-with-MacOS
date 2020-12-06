# raspberry-start
## MacOS
* Install [Raspberry Pi Imager](https://www.raspberrypi.org/downloads/)
* plug SD (>=8Gb)
* Select recommendend OS in "Choose OS", Choose SD, Write!
* Unplug and plug SD
* Copy [wpa_supplicant.conf](wpa_supplicant.conf) (*replace "wifissid" and "wifipass"*) and [ssh](ssh) (empty file) to sd card
## Pi
* Insert SD
* Connect power
## MacOS terminal
* Type *1. Use password "raspberry"
```
ssh pi@raspberrypi
```
* Install some programs
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nodejs npm
sudo apt-get install xrdp
sudo pip install s-tui
```
* Use [Microsoft Remote Desktop](https://apps.apple.com/ru/app/microsoft-remote-desktop/id1295203466?mt=12) to remote connect
* Type to processor monitoring
```
s-tui
```
* On/Off gpio pin
```
echo 20 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio20/direction
#turn on
echo 1 > /sys/class/gpio/gpio20/value
#turn off
echo 0 > /sys/class/gpio/gpio20/value
```
## Notes
*1 - Host key verification failed? 
```
cd .ssh
rm known_hosts
```
*2 - Remove some programs
```
sudo apt-get purge wolfram-engine libreoffice* scratch -y
sudo apt-get clean
sudo apt-get autoremove -y
```
* For USB cam
```
dmesg -T
sudo apt install fswebcam
fswebcam -r 640x480 image.jpg
sudo apt install uvcdynctrl
```
