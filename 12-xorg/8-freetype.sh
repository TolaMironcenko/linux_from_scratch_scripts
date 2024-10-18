#!/bin/bash

pkgname=freetype
pkgver=2.13.3

cd /sources
# wget https://downloads.sourceforge.net/freetype/freetype-2.13.3.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg
sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h
./configure --prefix=/usr --enable-freetype-config --disable-static
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
