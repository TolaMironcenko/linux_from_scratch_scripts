#!/bin/bash

cd /sources
tar -xvf bc-6.7.6.tar.xz
cd bc-6.7.6
CC=gcc ./configure --prefix=/usr -G -O3 -r
make $MAKEFLAGS
# make test
make install
cd ..
rm -rv bc-6.7.6
