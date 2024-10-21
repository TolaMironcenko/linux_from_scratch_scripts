#!/bin/bash

pkgname=feh
pkgver=3.10.3

cd /sources
# wget https://feh.finalrewind.org/feh-3.10.3.tar.bz2
tar -xvf $pkgname-$pkgver.tar.bz2
cd $pkgname-$pkgver
sed -i "s:doc/feh:&-3.10.3:" config.mk &&
make PREFIX=/usr $MAKEFLAGS
sudo make PREFIX=/usr install
cd ..
rm -rv $pkgname-$pkgver
