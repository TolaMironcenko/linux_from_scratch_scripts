#!/bin/bash

pkname=libepoxy
pkgver=1.5.10

cd /sources
# wget https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.10.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
