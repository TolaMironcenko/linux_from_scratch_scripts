#!/bin/bash

pkgname=libxcb
pkgver=1.17.0

cd /sources
# wget https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.17.0.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG      \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.17.0 &&
LC_ALL=en_US.UTF-8 make $MAKEFLAGS
sudo make install
sudo chown -Rv root:root $XORG_PREFIX/share/doc/libxcb-1.17.0
cd ..
rm -rv $pkgname-$pkgver
