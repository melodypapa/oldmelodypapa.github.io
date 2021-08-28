# Embedded Linux

- [Embedded Linux](#embedded-linux)
  - [Tool chains](#tool-chains)
    - [Create the environment on Ubuntu](#create-the-environment-on-ubuntu)
    - [References](#references)
    - [Kernel Tuple](#kernel-tuple)
    - [C library](#c-library)
  - [crosstool-NG](#crosstool-ng)
    - [Downloading & Compiling](#downloading--compiling)
    - [Running](#running)

## Tool chains

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

### Generate the ARM-versatile configure for qemu

ARM-versatile PB evaluation board has one ARM926EJ-S processor core, which implements the ARMv5TE instruction set.


