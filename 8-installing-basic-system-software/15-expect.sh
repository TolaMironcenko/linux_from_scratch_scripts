#!/bin/bash

pkgname=expect
pkgver=5.45.4

cd /sources
tar -xvf $pkgname$pkgver.tar.gz
cd $pkgname$pkgver
python3 -c 'from pty import spawn; spawn(["echo", "ok"])'
patch -Np1 -i ../expect-5.45.4-gcc14-1.patch
./configure --prefix=/usr           \
            --with-tcl=/usr/lib     \
            --enable-shared         \
            --disable-rpath         \
            --mandir=/usr/share/man \
            --with-tclinclude=/usr/include
make $MAKEFLAGS
# make test
make install
ln -svf $pkgname$pkgver/lib$pkgname$pkgver.so /usr/lib
cd ..
rm -rv $pkgname$pkgver
