# CAN 

## 2-Channel Isolated CAN Expansion HAT

* [Waveshare 2-Channel Isolated CAN Expansion HAT](https://www.waveshare.com/2-ch-can-hat.htm)

## Installation

### BCM 2835

Open terminal and run commands below to install bcm2835 library 

```
$ wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
$ tar zxvf bcm2835-1.60.tar.gz 
$ cd bcm2835-1.60/
$ sudo ./configure
$ sudo make
$ sudo make check
$ sudo make install
```

* **More Information**: http://www.airspayce.com/mikem/bcm2835/

### Setup SPI 

Insert the module to Raspberry Pi, and then modify config.txt file:

```
$ sudo nano /boot/config.txt
```

Append these statements to the file：

```
dtparam=spi=on
dtoverlay=mcp2515-can0,oscillator=16000000,interrupt=23
dtoverlay=mcp2515-can1,oscillator=16000000,interrupt=25
```

Save and exit, then restart your Pi：
```
$ sudo reboot
```

After restart, check if initialize successfully：
```
$ dmesg | grep spi
```

The following information is printed on the screen. It means SPI setup is working now.
```
[    7.872448] mcp251x spi0.1 can0: MCP2515 successfully initialized.
[    7.884604] mcp251x spi0.0 can1: MCP2515 successfully initialized.
```

### Setup CAN

```
$ sudo vim /etc/rc.local
```

Insert these statements to the file before the line "exit 0"

```
sudo ip link set can0 up type can bitrate 500000
sudo ip link set can1 up type can bitrate 500000
sudo ifconfig can0 txqueuelen 65536
sudo ifconfig can1 txqueuelen 65536
```

Save and exit, then restart your Pi：
```
$ sudo reboot
```

After restart, check if CAN driver is initialzed：
```
$ ifconfig
```

The following message can be seen. It means the CAN driver is working
```
can0: flags=193<UP,RUNNING,NOARP>  mtu 16
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 65536  (UNSPEC)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

can1: flags=193<UP,RUNNING,NOARP>  mtu 16
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 65536  (UNSPEC)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

## can-util

Install the can-util
```
$ sudo apt-get install can-utils
```

## More Information

* [Waveshare wiki page](https://www.waveshare.com/wiki/2-CH_CAN_HAT)