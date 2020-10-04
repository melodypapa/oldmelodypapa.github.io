# Linux Drvier for Raspberri PI

## Check the kernel version

```
$ uname -r
```

The response could be `5.4.51-v7l+`. It means the kernel version of the distribution.

## DNS of github 

the DNS of github host can be dirt in China. If so, the IP address should be appended manually in the `/etc/hosts`

```
199.232.28.133 raw.githubusercontent.com
```

## Necessary packages

```
$ sudo apt install git bc bison flex libssl-dev
```

## Retrieve the kernel source

```
$ sudo wget https://raw.githubusercontent.com/RPi-Distro/rpi-source/master/rpi-source -O /usr/local/bin/rpi-source && sudo chmod +x /usr/local/bin/rpi-source && /usr/local/bin/rpi-source -q --tag-update
$ rpi-source
```

## Hello World example

Classic Hello World example for a loadable kernel module ([LKM](http://en.wikipedia.org/wiki/Loadable_kernel_module)).

```text
mkdir hello && cd hello
```
Makefile
```text
obj-m := hello.o
```
hello.c
```text
#include <linux/module.h>
#include <linux/kernel.h>

int hello_init(void)
{
	pr_alert("Hello World :)\n");
	return 0;
}
void hello_exit(void)
{
	pr_alert("Goodbye World!\n");
}
module_init(hello_init);
module_exit(hello_exit);
```

```text
$ make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
$ sudo insmod hello.ko
$ dmesg | tail -1
[58728.008906] Hello World :)
$ sudo rmmod hello
$ dmesg | tail -1
[58732.440677] Goodbye World!

# Install module (/lib/modules/<ver>/extra/hello.ko)
$ sudo make -C /lib/modules/$(uname -r)/build M=$(pwd) modules_install
$ sudo depmod
$ sudo modprobe hello
```

* **Note**:
```
In Raspberry pi linux, the make shall be "make -C /lib/modules/$(uname -r)/build M=$(pwd) modules"
```

### More information

* https://www.raspberrypi.org/documentation/linux/kernel/headers.md
* https://www.raspberrypi.org/documentation/linux/kernel/building.md
* https://github.com/RPi-Distro/rpi-source
* [How to solve the issue "Connecting to raw.githubusercontent.com failed: Connection refused"](https://www.jianshu.com/p/5c1a352ba242)
* https://www.cnblogs.com/ay-a/p/9158897.html