#!/bin/bash

mkdir -pv $LFS
mount -v -t ext4 ${disk}4 $LFS
swapon -v ${disk}3
