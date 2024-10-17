#!/bin/bash

cd /sources
tar -xvf gmp-6.3.0.tar.xz
cd gmp-6.3.0
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0
make $MAKEFLAGS
make html $MAKEFLAGS
# make check 2>&1 | tee gmp-check-log
# awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log
make install
make install-html
cd ..
rm -rv gmp-6.3.0
