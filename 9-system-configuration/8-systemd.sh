#!/bin/bash

mkdir -pv /etc/systemd/system/getty@tty1.service.d

cat > /etc/systemd/system/getty@tty1.service.d/noclear.conf << EOF
[Service]
TTYVTDisallocate=no
EOF

# Disabling tmpfs for /tmp
# ln -sfv /dev/null /etc/systemd/system/tmp.mount
