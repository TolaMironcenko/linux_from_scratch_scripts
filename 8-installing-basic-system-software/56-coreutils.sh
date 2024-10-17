#!/bin/bash

pkgname=coreutils
pkgver=9.5

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
patch -Np1 -i ../$pkgname-$pkgver-i18n-2.patch
autoreconf -fiv
FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/usr            \
            --enable-no-install-program=kill,uptime
make $MAKEFLAGS
# make NON_ROOT_USERNAME=tester check-root
# groupadd -g 102 dummy -U tester
# chown -R tester . 
# su tester -c "PATH=$PATH make -k RUN_EXPENSIVE_TESTS=yes check" \
#    < /dev/null
# groupdel dummy
make install
mv -v /usr/bin/chroot /usr/sbin
mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8
cd ..
rm -rv $pkgname-$pkgver
