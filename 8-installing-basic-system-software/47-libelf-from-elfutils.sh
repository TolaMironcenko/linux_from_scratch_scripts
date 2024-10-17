#!/bin/bash

cd /sources
tar -xvf elfutils-0.191.tar.bz2
cd elfutils-0.191
./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy
make $MAKEFLAGS
# make check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
cd ..
rm -rv elfutils-0.191
