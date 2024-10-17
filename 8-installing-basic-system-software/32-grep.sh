#!/bin/bash

cd /sources
tar -xvf grep-3.11.tar.xz
cd grep-3.11
sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv grep-3.11
