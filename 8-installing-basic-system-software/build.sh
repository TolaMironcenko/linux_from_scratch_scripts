#!/bin/bash

for i in {1..81}; do 
    if [[ "$i" == "25" || "$i" == "28" ]]; then
        ./$i-* lsb
        continue
    fi
    ./$i-*
done
