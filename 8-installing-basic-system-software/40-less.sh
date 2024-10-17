#!/bin/bash

cd /sources
tar -xvf less-661.tar.gz
cd less-661
./configure --prefix=/usr --sysconfdir=/etc
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv less-661
