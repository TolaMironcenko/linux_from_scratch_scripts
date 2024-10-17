#!/bin/bash

cd /sources
tar -xvf kmod-33.tar.xz
cd kmod-33
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --with-openssl    \
            --with-xz         \
            --with-zstd       \
            --with-zlib       \
            --disable-manpages
make $MAKEFLAGS
make install

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /usr/sbin/$target
  # rm -fv /usr/bin/$target
done
cd ..
rm -rv kmod-33
