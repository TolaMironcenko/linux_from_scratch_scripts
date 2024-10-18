#!/bin/bash

pkgname=sudo
pkgver=1.9.15p5

cd /sources
# wget https://www.sudo.ws/dist/sudo-1.9.15p5.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr              \
            --libexecdir=/usr/lib      \
            --with-secure-path         \
            --with-env-editor          \
            --docdir=/usr/share/doc/sudo-1.9.15p5 \
            --with-passprompt="[sudo] password for %p: " &&
make $MAKEFLAGS
make install
cat > /etc/sudoers.d/00-sudo << "EOF"
Defaults secure_path="/usr/sbin:/usr/bin"
%wheel ALL=(ALL) ALL
EOF

if [ -d /etc/pam.d ]; then
cat > /etc/pam.d/sudo << "EOF"
# Begin /etc/pam.d/sudo

# include the default auth settings
auth      include     system-auth

# include the default account settings
account   include     system-account

# Set default environment variables for the service user
session   required    pam_env.so

# include system session defaults
session   include     system-session

# End /etc/pam.d/sudo
EOF
chmod 644 /etc/pam.d/sudo
fi

cd ..
rm -rv $pkgname-$pkgver
