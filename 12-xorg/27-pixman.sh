#!/bin/bash

pkgname=pixman
pkgver=0.43.4

cd /sources
# wget https://www.cairographics.org/releases/pixman-0.43.4.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
mkdir build
cd build
meson setup --prefix=/usr --buildtype=release ..
ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
