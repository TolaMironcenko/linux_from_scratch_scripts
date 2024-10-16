#!/bin/bash

cd /sources
tar -xvf #mpfr
cd #mpfr
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.1
make $MAKEFLAGS
make html $MAKEFLAGS
# make check
make install
make install-html
cd ..
rm -rv #mpfr
