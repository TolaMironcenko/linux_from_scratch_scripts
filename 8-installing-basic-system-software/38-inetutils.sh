#1/bin/bash

cd /sources
tar -xvf #inteutils
cd #intetutils
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
rm -rv #inetutils
