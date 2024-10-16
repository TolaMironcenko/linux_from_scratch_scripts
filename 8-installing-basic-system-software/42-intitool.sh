#!/bin/bash

cd /sources
tar -xvf #intitool
cd #intitool
sed -i 's:\\\${:\\\$\\{:' intltool-update.in
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO
cd ..
rm -rv #intitool
