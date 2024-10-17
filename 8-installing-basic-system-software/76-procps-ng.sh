#!/bin/bash

cd /sources
tar -xvf procps-ng-4.0.4.tar.xz
cd procps-ng-4.0.4
./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.4 \
            --disable-static                        \
            --disable-kill                          \
            --with-systemd
make src_w_LDADD='$(LDADD) -lsystemd' $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv procps-ng-4.0.4
