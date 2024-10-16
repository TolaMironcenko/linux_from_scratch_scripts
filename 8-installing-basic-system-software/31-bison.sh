#!/bin/bash

cd /sources
tar -xvf #bison
cd #bison
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #bison
