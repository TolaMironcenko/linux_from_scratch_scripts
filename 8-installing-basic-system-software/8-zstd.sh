#!/bin/bash

cd /sources
tar -xvf zstd-1.5.6.tar.gz
cd zstd-1.5.6
make prefix=/usr $MAKEFLAGS
# make check
make prefix=/usr install
rm -v /usr/lib/libzstd.a
cd ..
rm -rv zstd-1.5.6
