#!/bin/bash

cd /sources
# wget https://www.freedesktop.org/software/libevdev/libevdev-1.13.2.tar.xz
tar -xvf libevdev-1.13.2.tar.xz
cd libevdev-1.13.2
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=$XORG_PREFIX     \
      --buildtype=release       \
      -D documentation=disabled &&
ninja
sudo ninja install
cd ../../
rm -rv libevdev-1.13.2

# wget https://bitmath.org/code/mtdev/mtdev-1.1.7.tar.bz2
tar -xvf mtdev-1.1.7.tar.bz2
cd mtdev-1.1.7
./configure --prefix=/usr --disable-static &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv mtdev-1.1.7

# wget https://www.x.org/pub/individual/driver/xf86-input-evdev-2.10.6.tar.bz2
tar -xvf xf86-input-evdev-2.10.6.tar.bz2
cd xf86-input-evdev-2.10.6
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv xf86-input-evdev-2.10.6

# wget https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.26.1/libinput-1.26.1.tar.gz
tar -xvf libinput-1.26.1.tar.gz
cd libinput-1.26.1
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=$XORG_PREFIX     \
      --buildtype=release       \
      -D debug-gui=false        \
      -D tests=false            \
      -D libwacom=false         \
      -D udev-dir=/usr/lib/udev &&
ninja
sudo ninja install
cd ../../
rm -rv libinput-1.26.1

# wget https://www.x.org/pub/individual/driver/xf86-input-libinput-1.4.0.tar.xz
tar -xvf xf86-input-libinput-1.4.0.tar.xz
cd xf86-input-libinput-1.4.0
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv xf86-input-libinput-1.4.0

# wget https://www.x.org/pub/individual/driver/xf86-input-synaptics-1.9.2.tar.xz
tar -xvf xf86-input-synaptics-1.9.2.tar.xz
cd xf86-input-synaptics-1.9.2
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install 
cd ..
rm -rv xf86-input-synaptics-1.9.2

# wget https://github.com/linuxwacom/xf86-input-wacom/releases/download/xf86-input-wacom-1.2.2/xf86-input-wacom-1.2.2.tar.bz2
tar -xvf xf86-input-wacom-1.2.2.tar.bz2
cd xf86-input-wacom-1.2.2
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv xf86-input-wacom-1.2.2
