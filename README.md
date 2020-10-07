# raspberry-start
## MacOS
* Install [Raspberry Pi Imager](https://www.raspberrypi.org/downloads/)
* Select recommendend OS in "Choose OS", Choose SD, Write!
* Unplug and plug SD
* Copy [wpa_supplicant.conf](wpa_supplicant.conf) (*replace "wifissid" and "wifipass"*) and [ssh](ssh) to sd card
## Pi
* Insert SD
* Connect to power
## MacOS terminal
* Type (replace IP) *1
```
ssh pi@192.168.1.6
```
* Use password "raspberry"
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nodejs npm
sudo apt-get install xrdp
sudo pip install s-tui
```
* Use [Microsoft RDP](https://apps.apple.com/ru/app/microsoft-remote-desktop/id1295203466?mt=12) to remote connect
* Type to processor monitoring
```
s-tui
```
## Notes
*1 - Host key verification failed? 
```
cd .ssh
rm known_hosts
```
