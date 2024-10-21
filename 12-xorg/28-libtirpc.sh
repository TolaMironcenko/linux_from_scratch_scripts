#!/bin/bash

pkname=libtirpc
pkgver=1.3.5

cd /sources
# wget https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.5.tar.bz2
tar -xvf $pkgname-$pkgver.tar.bz2
cd $pkgname-$pkgver
./configure --prefix=/usr                                   \
            --sysconfdir=/etc                               \
            --disable-static                                \
            --disable-gssapi                                &&
make $MAKEFLAGS
sudo make install
cd ../
rm -rv $pkgname-$pkgver
