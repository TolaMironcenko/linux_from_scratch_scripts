#!/bin/bash

ln -s /dev/null /etc/systemd/network/99-default.link
# cat > /etc/systemd/network/10-ether0.link << "EOF"
# [Match]
# # Change the MAC address as appropriate for your network device
# MACAddress=12:34:45:78:90:AB

# [Link]
# Name=ether0
# EOF

if [ "$1" = "static" ]; then
cat > /etc/systemd/network/10-eth-static.network << "EOF"
[Match]
Name=<network-device-name>

[Network]
Address=192.168.0.2/24
Gateway=192.168.0.1
DNS=192.168.0.1
Domains=<Your Domain Name>
EOF
fi
if [ "$1" = "dhcp" ]; then
cat > /etc/systemd/network/10-eth-dhcp.network << "EOF"
[Match]
Name=eth0

[Network]
DHCP=ipv4

[DHCPv4]
UseDomains=true
EOF
fi

# cat > /etc/resolv.conf << "EOF"
# # Begin /etc/resolv.conf

# # domain <Your Domain Name>
# # nameserver <IP address of your primary nameserver>
# # nameserver <IP address of your secondary nameserver>

# # End /etc/resolv.conf
# EOF

echo "lfs" > /etc/hostname
cat > /etc/hosts << "EOF"
# Begin /etc/hosts

127.0.0.1 localhost
::1 localhost
127.0.1.1 lfs.localdomain lfs

# End /etc/hosts
EOF
