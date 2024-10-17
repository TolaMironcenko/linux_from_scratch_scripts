#!/bin/bash

pkgname=gawk
pkgver=5.3.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
rm -f /usr/bin/$pkgname-$pkgver
make install
ln -sv gawk.1 /usr/share/man/man1/awk.1
mkdir -pv                                   /usr/share/doc/$pkgname-$pkgver
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
