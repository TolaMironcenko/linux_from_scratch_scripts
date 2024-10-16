#!/bin/bash

cd /sources
tar -xvf #xz
cd #xz
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.6.2
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #xz
