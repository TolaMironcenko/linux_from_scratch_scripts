#!/bin/bash

cd /sources
tar -xvf attr-2.5.2.tar.gz
cd attr-2.5.2
./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv attr-2.5.2
