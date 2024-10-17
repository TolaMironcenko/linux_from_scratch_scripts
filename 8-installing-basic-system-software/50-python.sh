#!/bin/bash

pkgname=Python
pkgver=3.12.5

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --enable-optimizations
make $MAKEFLAGS
# make test TESTOPTS="--timeout 120"
make install
cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF
install -v -dm755 /usr/share/doc/$pkgname-$pkgver/html

tar --no-same-owner \
    -xvf ../$pkgname-$pkgver-docs-html.tar.bz2
cp -R --no-preserve=mode $pkgname-$pkgver-docs-html/* \
    /usr/share/doc/$pkgname-$pkgver/html
cd ..
rm -rv $pkgname-$pkgver
