sudo apt-get  update
sudo apt-get upgrade
sudo apt-get install dnsmasq hostapd


sudo curl https://raw.githubusercontent.com/rezonn/raspberry-start/main/dhcpcd.conf -o /etc/dhcpcd.conf

sudo curl https://raw.githubusercontent.com/rezonn/raspberry-start/main/interfaces -o /etc/network/interfaces

sudo curl https://raw.githubusercontent.com/rezonn/raspberry-start/main/hostapd.conf -o /etc/hostapd/hostapd.conf

rep="DAEMON_CONF=\"/etc/hostapd/hostapd.conf\""
sudo bash -c 'echo "$rep" >> /etc/default/hostapd'

sudo curl https://raw.githubusercontent.com/rezonn/raspberry-start/main/dnsmasq.conf -o /etc/dnsmasq.conf

# sudo service hostapd start
# sudo service dnsmasq start



sudo service dhcpcd restart; sudo ifdown wlan0; sudo ifup wlan0; sudo service hostapd start; sudo service dnsmasq start


sudo dpkg -i pppoeconf_1.21_all.deb





