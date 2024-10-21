#!/bin/bash

pkgname=openssh
pkgver=9.8p1

cd /sources
# wget https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.8p1.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
install -v -g sys -m700 -d /var/lib/sshd &&

groupadd -g 50 sshd        &&
useradd  -c 'sshd PrivSep' \
         -d /var/lib/sshd  \
         -g sshd           \
         -s /bin/false     \
         -u 50 sshd
./configure --prefix=/usr                            \
            --sysconfdir=/etc/ssh                    \
            --with-privsep-path=/var/lib/sshd        \
            --with-default-path=/usr/bin             \
            --with-superuser-path=/usr/sbin:/usr/bin \
            --with-pid-dir=/run                      &&
make $MAKEFLAGS
sudo make install &&
sudo install -v -m755    contrib/ssh-copy-id /usr/bin     &&

sudo install -v -m644    contrib/ssh-copy-id.1 \
                    /usr/share/man/man1              &&
sudo install -v -m755 -d /usr/share/doc/openssh-9.8p1     &&
sudo install -v -m644    INSTALL LICENCE OVERVIEW README* \
                    /usr/share/doc/openssh-9.8p1
