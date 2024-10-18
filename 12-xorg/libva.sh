#!/bin/bash

pkgname=libva
pkgver=2.22.0

cd /sources
# wget https://github.com/intel/libva/archive/2.22.0/libva-2.22.0.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
cd build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release &&
ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
