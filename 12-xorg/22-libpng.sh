#!/bin/bash

pkgname=libpng
pkgver=1.6.43

cd /sources
# wget https://downloads.sourceforge.net/libpng/libpng-1.6.43.tar.xz
# wget https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.43-apng.patch.gz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
gzip -cd ../libpng-1.6.43-apng.patch.gz | patch -p1
./configure --prefix=/usr --disable-static &&
make $MAKEFLAGS
sudo make install
sudo mkdir -v /usr/share/doc/libpng-1.6.43
sudo cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.43
cd ..
rm -rv $pkgname-$pkgver
