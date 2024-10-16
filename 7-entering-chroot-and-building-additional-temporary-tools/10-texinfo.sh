#!/bin/bash

cd /sources
tar -xvf #texinfo
cd #texinfo
./configure --prefix=/usr
make $MAKEFLAGS
make install
cd ..
rm -rv #texinfo
