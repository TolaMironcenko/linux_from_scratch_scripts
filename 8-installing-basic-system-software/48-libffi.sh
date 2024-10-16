#!/bin/bash

cd /sources
tar -xvf #libffi
cd #libffi
./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #libffi
