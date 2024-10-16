#!/bin/bash

disk="/dev/sdz"

# create 4 gpt partitions 1 - efi system - 500M, 2 - bios boot - 1M, 3 - swap - 8G, 4 - linux filesystem - all disk

mkfs.fat -F 32 ${disk}1
mkswap ${disk}3
mkfs.ext4 ${disk}4
