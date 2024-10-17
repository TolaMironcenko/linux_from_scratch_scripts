#!/bin/bash

pkgname=procps-ng
pkgver=4.0.4

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/$pkgname-$pkgver \
            --disable-static                        \
            --disable-kill                          \
            --with-systemd
make src_w_LDADD='$(LDADD) -lsystemd' $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv $pkgname-$pkgver
