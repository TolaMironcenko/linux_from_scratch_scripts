#!/bin/bash

cd /sources
tar -xvf mpc-1.3.1.tar.gz
cd mpc-1.3.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1
make $MAKEFLAGS
make html $MAKEFLAGS
# make check
make install
make install-html
cd ..
rm -rv mpc-1.3.1
