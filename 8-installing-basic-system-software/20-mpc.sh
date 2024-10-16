#!/bin/bash

cd /sources
tar -xvf #mpc
cd #mpc
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1
make $MAKEFLAGS
make html $MAKEFLAGS
# make check
make install
make install-html
