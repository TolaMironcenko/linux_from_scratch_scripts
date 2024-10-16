#!/bin/bash

cd /sources
tar -xvf #elfutils
cd #elfutils
./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy
make $MAKEFLAGS
# make check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
cd ..
rm -rv #elfutils
