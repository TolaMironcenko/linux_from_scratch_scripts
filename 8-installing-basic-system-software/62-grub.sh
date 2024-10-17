#!/bin/bash

pkgname=grub
pkgver=2.12

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
unset {C,CPP,CXX,LD}FLAGS
echo depends bli part_gpt > grub-core/extra_deps.lst
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make $MAKEFLAGS
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
cd ..
rm -rv $pkgname-$pkgver
