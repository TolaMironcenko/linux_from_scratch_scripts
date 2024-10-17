#!/bin/bash

pkgname=kbd
pkgver=2.6.4

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
patch -Np1 -i ../$pkgname-$pkgver-backspace-1.patch
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
./configure --prefix=/usr --disable-vlock
make $MAKEFLAGS
# make check
make install
cp -R -v docs/doc -T /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
