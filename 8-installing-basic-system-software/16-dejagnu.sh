#!/bin/bash

pkgname=dejagnu
pkgver=1.6.3

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
mkdir -v build
cd build
../configure --prefix=/usr
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi
# make check
make install
install -v -dm755  /usr/share/doc/$pkgname-$pkgver
install -v -m644   doc/dejagnu.{html,txt} /usr/share/doc/$pkgname-$pkgver
cd ../../
rm -rv $pkgname-$pkgver
