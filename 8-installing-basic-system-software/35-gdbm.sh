#!/bin/bash

cd /sources
tar -xvf #gdbm
cd #gdbm
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #gdbm
