#!/bin/bash

cd /sources
tar -xvf libffi-3.4.6.tar.gz
cd libffi-3.4.6
./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv libffi-3.4.6
