#!/bin/bash

mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib}
ln -sv bin $LFS/usr/sbin
ln -sv usr/bin $LFS/bin
ln -sv usr/bin $LFS/sbin
ln -sv usr/lib $LFS/lib
ln -sv usr/lib $LFS/lib64
mkdir -pv $LFS/tools
