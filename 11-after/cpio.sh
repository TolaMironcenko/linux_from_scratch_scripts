#!/bin/bash

cd /sources
# wget https://ftp.gnu.org/gnu/cpio/cpio-2.15.tar.bz2
tar -xvf cpio-2.15.tar.bz2
cd cpio-2.15
./configure --prefix=/usr \
            --enable-mt   \
            --with-rmt=/usr/libexec/rmt &&
make $MAKEFLAGS &&
makeinfo --html            -o doc/html      doc/cpio.texi &&
makeinfo --html --no-split -o doc/cpio.html doc/cpio.texi &&
makeinfo --plaintext       -o doc/cpio.txt  doc/cpio.texi

make install &&
install -v -m755 -d /usr/share/doc/cpio-2.15/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/cpio-2.15/html &&
install -v -m644    doc/cpio.{html,txt} \
                    /usr/share/doc/cpio-2.15
cd ..
rm -rv cpio-2.15
