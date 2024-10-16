#!/bin/bash

cd /sources
tar -xvf #tar
cd #tar
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.35
cd ..
rm -rv #tar
