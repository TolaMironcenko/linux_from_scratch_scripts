#!/bin/bash

if [ "$1" = "" ]; then
    printf "Please use $0 lfs or $0 lsb\n"
    exit 1
fi

cd /sources
tar -xvf #libxcrypt
cd #libxcrypt
./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens
make $MAKEFLAGS
# make check
make install
if [ "$1" = "lsb" ]; then
    make distclean
    ./configure --prefix=/usr                \
                --enable-hashes=strong,glibc \
                --enable-obsolete-api=glibc  \
                --disable-static             \
                --disable-failure-tokens
    make $MAKEFLAGS
    cp -av --remove-destination .libs/libcrypt.so.1* /usr/lib
fi
cd ..
rm -rv #libxcrypt
