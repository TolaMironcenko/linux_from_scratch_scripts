#!/bin/bash

cd /sources
tar -xvf #groff
cd #groff
PAGE=A4 ./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #groff
