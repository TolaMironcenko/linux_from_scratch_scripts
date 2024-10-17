#!/bin/bash

cd /sources
tar -xvf pkgconf-2.3.0.tar.xz
cd pkgconf-2.3.0
./configure --prefix=/usr              \
            --disable-static           \
            --docdir=/usr/share/doc/pkgconf-2.3.0
make $MAKEFLAGS
make install
ln -sv pkgconf   /usr/bin/pkg-config
ln -sv pkgconf.1 /usr/share/man/man1/pkg-config.1
cd ..
rm -rv pkgconf-2.3.0
