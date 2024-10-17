#!/bin/bash

cd $LFS/sources
tar -xvf bash-5.2.32.tar.gz
cd bash-5.2.32
./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc              \
            bash_cv_strtold_broken=no
make $MAKEFLAGS
make DESTDIR=$LFS install
ln -sv bash $LFS/bin/sh
cd ..
rm -rv bash-5.2.32
