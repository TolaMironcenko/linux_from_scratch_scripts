#!/bin/bash

cd /sources
tar -xvf #zstd
cd #zstd
make prefix=/usr $MAKEFLAGS
# make check
make prefix=/usr install
rm -v /usr/lib/libzstd.a
cd ..
rm -rv #zstd
