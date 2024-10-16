#!/bin/bash

cd /sources
tar -xvf #less
cd #less
./configure --prefix=/usr --sysconfdir=/etc
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #less
