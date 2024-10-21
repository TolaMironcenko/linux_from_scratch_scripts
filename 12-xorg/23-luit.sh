#!/bin/bash

pkgname=luit
pkgver=20240102

cd /sources
# wget https://invisible-mirror.net/archives/luit/luit-20240102.tgz
tar -xvf $pkgname-$pkgver.tgz
cd $pkgname-$pkgver
./configure $XORG_CONFIG
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
