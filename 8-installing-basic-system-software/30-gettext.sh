#!/bin/bash

cd /sources
tar -xvf gettext-0.22.5.tar.xz
cd gettext-0.22.5
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.22.5
make $MAKEFLAGS
# make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
cd ..
rm -rv gettext-0.22.5
