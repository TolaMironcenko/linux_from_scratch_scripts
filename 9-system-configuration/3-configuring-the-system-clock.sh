#!/bin/bash

cat > /etc/adjtime << "EOF"
0.0 0 0.0
0
LOCAL
EOF
timedatectl set-local-rtc 1
timedatectl set-timezone TIMEZONE 
