# Toolchain for embedded linux

- [Toolchain for embedded linux](#toolchain-for-embedded-linux)
  - [Toolchain](#toolchain)
    - [Create the environment on Ubuntu](#create-the-environment-on-ubuntu)
    - [References](#references)
    - [Kernel Tuple](#kernel-tuple)
    - [C library](#c-library)
  - [crosstool-NG](#crosstool-ng)
    - [Downloading & Compiling](#downloading--compiling)
    - [Running](#running)
    - [Create toolchain for QEMU ARM-versatile](#create-toolchain-for-qemu-arm-versatile)

## Toolchain

### Create the environment on Ubuntu

The required packages: autoconf, automake, bison, bzip2, cmake, flex, g++, gawk, gcc
gettext, git, gperf, help2man, libncurses5-dev,libstdc++6, libtool, libtool-bin, make,
patch, python3-dev, rsync, texinfo, unzip, wget, and xz-utils.

```
$ sudo apt install autoconf automake bison bzip2 cmake flex g++ gawk gcc gettext git gperf help2man libncurses5-dev libstdc++6 libtool libtool-bin make patch python3-dev rsync texinfo unzip wget xz-utils
```

### References

* [GNU Project](http://www.gnu.org)
* [LLVM Compiler](http://llvm.org)
* [Building Linux kernel with Clang/LLVM](https://www.kernel.org/doc/html/latest/kbuild/llvm.html)
* [Clang for cross-compilation](https://clang.llvm.org/docs/CrossCompilation.html)
* [EmbToolkit](https://embtoolkit.org)

### Kernel Tuple
* **CPU**: CPU architecture, such as ARM, MIPS, or x86_64. If the CPU has both endian modes. *el* for little-endian or *eb* for big-endian.
* **Vendor**: The identifies for the provider of the toolchain.
* **Kernel**: It is always *linux*.
* **Operating System**: A name of the user space component. it maybe be *gnu* or *musl*.

Check the name prefix with *gcc*.
```
$ gcc -dumpmachine
x86_64-linux-gnu

$ mipsel-unknown-linux-gnu-gcc -dumpmachine
mipsel-unknow-linux-gnu
```
The second one could be interpreted a CPU of little-endian MIPS, and *unknown* vendor, a kernel of *linux*, and a user space of *gnu*.

### C library

| name                   |                                                            |
| ---------------------- | ---------------------------------------------------------- |
| glib                   | This is the standard GNU C library. It is big and not very |
|                        | configurable, but it is the most complete implementation   |
|                        | of the POSIX API.                                          |
| musl libc              | a small and standards-compliant alternative to GNU libc.   |
|                        | It is a good choice for system with a limited amount of    |
|                        | RAM and storage                                            |
| uClib-ng (recommended) | This is the microcontroller C library which was first      |
|                        | developed to work with uCLinux.                            |
| eglibc (obsolete)      | no longer maintained.                                      |

## crosstool-NG

### Downloading & Compiling

The following example shows how to compile the crosstool-ng 1.24.0 version and install it into the current directory. It can avoids the need for root permissions. Otherwise it could be installed in the default location /usr/local/share.

```bash
$ git clone git@github.com:crosstool-ng/crosstool-ng.git
$ cd crosstool-ng
$ git checkout crosstool-ng-1.24.0 # switch to tag crosstool-ng-1.24.0
$ ./bootstrap
$ ./configure --prefix=${PWD}      # the program will be installed into the current directory
$ make
$ make install
```

### Running
After that and type *bin/ct-ng* to launch the crosstool.

| parameter      |                                                             |
| -------------- | ----------------------------------------------------------- |
| clean          | Remove generated files                                      |
| distclean      | Remove generated files, configuration and build directories |
| list-samples   | find a good base configuration                              |
| update-samples | Regenerate sample configuration using the current Kconfig   |
| show-tuple     | Print the tuple of the currently configured toolchain       |

### Create toolchain for QEMU ARM-versatile

ARM-versatile PB evaluation board has one ARM926EJ-S processor core, which implements the ARMv5TE instruction set.

Create the configuration according to following steps:
1. Find a good base configuration to work from
```
bin/ct-ng list-samples
```
2. No exact fit one is found and choose to use a generic target (arm-unknown-linux-gnueabi).
```
$ bin/ct-ng distclean
$ bin/ct-ng arm-unknown-linux-gnueabi 
```
3. Review the configuration and make minor changes with menu command.
```
$ bin/ct-ng menuconfig
``` 
  * In **Paths and misc** options, disable **Render the toolchain read-only** (CT_PREFIX_DIR_RO).

4. Now, build the toolchain
```  
$ bin/ct-ng build
```

If you meet the problem of expat downloading, please refer to [this link](https://github.com/crosstool-ng/crosstool-ng/issues/1479). And changing CT_EXPAT_VERSION to "2.4.1" can also resolve the problem. 

5. The toolchain will be installed in ~/x-tools/arm-unknown-linux-gnueabi.

