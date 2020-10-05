# Create AP

## Install required packages

```
$ sudo apt-get install hostapd dnsmasq
```

## How to configure create ap

```
$ git clone https://github.com/lakinduakash/linux-wifi-hotspot.git
$ cd linux-wifi-hotspot/src/scripts
$ sudo make install
$ sudo create_ap wlan0 eth0 -g 192.168.1.115 mywifi Password123 --mkconfig /etc/create_ap.conf
```

**Note**

* The length of password shall be more than 8 characters.

## Verify the configure

```
$ sudo create_ap --config /etc/create_ap.conf
```

## Start the create_ap as service

```
$ sudo systemctl enable create_ap
$ sudo systemctl start create_ap
$ sudo reboot
```

## More inforation

1. https://github.com/lakinduakash/linux-wifi-hotspot/blob/master/src/scripts/README.md
2. https://github.com/oblique/create_ap