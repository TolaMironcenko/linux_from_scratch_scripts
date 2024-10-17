#!/bin/bash

pkgname=binutils
pkgver=2.43.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz 
cd $pkgname-$pkgver
mkdir -v build
cd build
../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --enable-new-dtags  \
             --with-system-zlib  \
             --enable-default-hash-style=gnu
make tooldir=/usr $MAKEFLAGS
# make -k check
# grep '^FAIL:' $(find -name '*.log')
make tooldir=/usr install
rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a
cd ../../
rm -rv $pkgname-$pkgver
