#!/bin/bash

cd /sources
tar -xvf gdbm-1.24.tar.gz
cd gdbm-1.24
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv gdbm-1.24
