#1/bin/bash

pkgname=inetutils
pkgver=2.5

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' telnet/telnet.c
./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
make $MAKEFLAGS
# make check
make install
mv -v /usr/{,s}bin/ifconfig
cd ..
rm -rv $pkgname-$pkgver
