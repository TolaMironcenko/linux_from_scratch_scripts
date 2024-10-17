#!/bin/bash

pkgname=flex
pkgver=2.6.4

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr \
            --docdir=/usr/share/doc/$pkgname-$pkgver \
            --disable-static
make $MAKEFLAGS
# make check
make install
ln -sv flex   /usr/bin/lex
ln -sv flex.1 /usr/share/man/man1/lex.1
cd ..
rm -rv $pkgname-$pkgver
