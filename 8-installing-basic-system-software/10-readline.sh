#!/bin/bash

pkgname=readline
pkgver=8.2.13

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
sed -i 's/-Wl,-rpath,[^ ]*//' support/shobj-conf
./configure --prefix=/usr    \
            --disable-static \
            --with-curses    \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make SHLIB_LIBS="-lncursesw" $MAKEFLAGS
make SHLIB_LIBS="-lncursesw" install
install -v -m644 doc/*.{ps,pdf,html,dvi} /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
