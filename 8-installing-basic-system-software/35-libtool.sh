#!/bin/bash

pkgname=libtool
pkgver=2.4.7

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr
make $MAKEFLAGS
# make -k check
make install
rm -fv /usr/lib/libltdl.a
cd ..
rm -rv $pkgname-$pkgver
