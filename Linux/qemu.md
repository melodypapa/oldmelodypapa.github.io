# QEMU

- [QEMU](#qemu)
  - [Introduction](#introduction)
  - [Installation](#installation)
  - [Hardware Board Emulation](#hardware-board-emulation)
    - [List all the support hardware board for Arm](#list-all-the-support-hardware-board-for-arm)
    - [Emulate the vexpress-a9](#emulate-the-vexpress-a9)

## Introduction

QEMU is a machine emulator. It comes in a number of different flavors, each of which can emulate a processor architecture and a number of boards build using that architecture. For example:

* qemu-system-arm: 32-bit Arm
* qemu-system-mips: MIPS
* qemu-system-ppc: PowerPC
* qemu-system-x86: x86

## Installation

* Linux: sudo apt install qemu-system

## Hardware Board Emulation

### List all the support hardware board for Arm

```
qemu-system-arm -machine help
```

### Emulate the vexpress-a9

```
qemu-system-arm -machine vexpress-a9 -m 256M -drive file=rootfs.ext4,sd -net nic -net use -kernel zImage -dtb express-v2p-ca8.dtb -append "console=ttyAMA0,115200 root=/dev/mmcblk0" -serial stdio -net nic,model=lan9118 -net tap,ifname=tap0
```

| Parameter                  | Meaning                                                        |
| -------------------------- | -------------------------------------------------------------- |
| -machine vexpresss-a9      | Create an emulation of an Arm Versatile Express development    |
|                            | board with a Cortex A-9 processor                              |
| -m 256M                    | Populates it with 256MiB of RAM                                |
| -drive file=root.fs.ext,sd | Connects the SD interface to the local file rootfs.ext         |
|                            | (which contains a filesystem image)                            |
| -kernel zImage             | Loads the Linux kernel                                         |
| -dtb vexpress...dtb        | Loads the device tree from the local file vexpress...dtb       |
| -append "..."              | Appends the strings as the kernel command line                 |
| -serial stdio              | Connects the serial port to the terminal that launched QEMU,   |
|                            | usually so that you can log on to the emulated machine via the |
|                            | serial console                                                 |
| -net nic,model=lan9118     | Creates a network interface                                    |
| -net tap,ifrname=tap0      | Connects the network interface to the virtual network          |
|                            | interface, tap0                                                |

To create the virtual network interface on the host
```bash
$ sudo tunctl -u $(whoami) -t tap0
```

