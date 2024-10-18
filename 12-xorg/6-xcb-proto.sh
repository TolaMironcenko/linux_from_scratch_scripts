#!/bin/bash

pkgname=xcb-proto
pkgver=1.17.0

cd /sources
# wget https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
PYTHON=python3 ./configure $XORG_CONFIG
sudo make install
sudo rm -f $XORG_PREFIX/lib/pkgconfig/xcb-proto.pc
cd ..
rm -rv $pkgname-$pkgver
