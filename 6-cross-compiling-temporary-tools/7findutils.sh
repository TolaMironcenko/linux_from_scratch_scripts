#!/bin/bash

cd $LFS/sources
tar -xvf #findutils
cd #findutils
./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv #findutils
