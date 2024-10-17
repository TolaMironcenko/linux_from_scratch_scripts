#!/bin/bash

cd /sources
tar -xvf man-db-2.12.1.tar.xz
cd man-db-2.12.1
./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.12.1 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv man-db-2.12.1
