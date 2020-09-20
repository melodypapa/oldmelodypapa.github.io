# Raspberry Network

## Static IP address 

## Create AP

### Install required packages

```
sudo apt-get install util-linux procps hostapd iproute2 iw haveged dnsmasq
```

How to create the AP

```
git clone https://github.com/lakinduakash/linux-wifi-hotspot.git
cd linux-wifi-hotspot/src/scripts
sudo make install
backup old config file (/etc/create_ap.conf)
create_ap wlan0 eth0 -g 192.168.1.115 mywifi Password123 --mkconfig /etc/create_ap.conf
sudo systemctl enable create_ap
sudo systemctl start create_ap
```

**Note**

1. The length of password shall be more than 8 characters.
2. You can try to run create_ap directly to verfiy the setting is correct.
```
create_ap --config /etc/create_ap.conf
```

More inforation
* https://github.com/lakinduakash/linux-wifi-hotspot/blob/master/src/scripts/README.md