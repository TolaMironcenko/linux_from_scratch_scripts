#!/bin/bash

cd /sources
tar -xvf bison-3.8.2.tar.xz
cd bison-3.8.2
./configure --prefix=/usr \
            --docdir=/usr/share/doc/bison-3.8.2
make $MAKEFLAGS
make install
cd ..
rm -rv bison-3.8.2
