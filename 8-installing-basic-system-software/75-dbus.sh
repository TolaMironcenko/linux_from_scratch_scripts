#!/bin/bash

pkgname=dbus
pkgver=1.14.10

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr                        \
            --sysconfdir=/etc                    \
            --localstatedir=/var                 \
            --runstatedir=/run                   \
            --enable-user-session                \
            --disable-static                     \
            --disable-doxygen-docs               \
            --disable-xml-docs                   \
            --docdir=/usr/share/doc/$pkgname-$pkgver \
            --with-system-socket=/run/dbus/system_bus_socket
make $MAKEFLAGS
# make check
make install
ln -sfv /etc/machine-id /var/lib/dbus
cd ..
rm -rv $pkgname-$pkgver
