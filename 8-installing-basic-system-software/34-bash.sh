#!/bin/bash

pkgname=bash
pkgver=5.2.32

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            bash_cv_strtold_broken=no \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# chown -R tester .
# su -s /usr/bin/expect tester << "EOF"
# set timeout -1
# spawn make tests
# expect eof
# lassign [wait] _ _ _ value
# exit $value
# EOF
make install
cd ..
rm -rv $pkgname-$pkgver
exec /usr/bin/bash --login
