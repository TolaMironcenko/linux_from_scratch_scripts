#!/bin/bash

pkgname=xterm
pkgver=393

# wget https://invisible-mirror.net/archives/xterm/xterm-393.tgz
tar -xvf $pkgname-$pkgver.tgz
cd $pkgname-$pkgver
sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
printf '\tkbs=\\177,\n' >> terminfo &&

TERMINFO=/usr/share/terminfo \
./configure $XORG_CONFIG     \
    --with-app-defaults=/etc/X11/app-defaults &&

make $MAKEFLAGS
sudo make install
sudo mkdir -pv /usr/share/applications
sudo cp -v *.desktop /usr/share/applications
sudo cat >> /etc/X11/app-defaults/XTerm << "EOF"
*VT100*locale: true
*VT100*faceName: Monospace
*VT100*faceSize: 10
*backarrowKeyIsErase: true
*ptyInitialErase: true
EOF
cd ..
rm -rv $pkgname-$pkgver
