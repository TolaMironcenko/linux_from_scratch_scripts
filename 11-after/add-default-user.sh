#!/bin/bash

if [ "$1" = "" ]; then
    echo "use $0 <username>"
    exit 1
fi

useradd -m -g users -G wheel -s /bin/bash $1
passwd $1
