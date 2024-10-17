#!/bin/bash

pkgname=elfutils
pkgver=0.191

cd /sources
tar -xvf $pkgname-$pkgver.tar.bz2
cd $pkgname-$pkgver
./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy
make $MAKEFLAGS
# make check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
cd ..
rm -rv $pkgname-$pkgver
