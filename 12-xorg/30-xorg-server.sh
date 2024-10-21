#!/bin/bash

pkgname=xorg-server
pkgver=21.1.13

cd /sources
# wget https://www.x.org/pub/individual/xserver/xorg-server-21.1.13.tar.xz
# wget https://www.linuxfromscratch.org/patches/blfs/12.2/xorg-server-21.1.13-tearfree_backport-2.patch
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
patch -Np1 -i ../xorg-server-21.1.13-tearfree_backport-2.patch
mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --localstatedir=/var  \
      -D glamor=true        \
      -D xkb_output_dir=/var/lib/xkb &&
ninja
sudo ninja install
sudo mkdir -pv /etc/X11/xorg.conf.d
cd ../../
rm -rv $pkgname-$pkgver
