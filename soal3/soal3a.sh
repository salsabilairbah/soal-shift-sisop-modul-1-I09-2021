#!/bin/bash

for loop in {1..23}; do
#if [ $loop -lt 10 ]; then
#    wget -O Koleksi_0$loop -a "Koleksi.log" https://loremflickr.com/320/240/kitten
     #echo "Koleksi0$loop"
#else
    #echo "Koleksi$loop"
    wget -a  Koleksi$loop -o  "Foto.log" https://loremflickr.com/320/240/kitten
    max=$((loop-1))
    for (( i=1; i<=max; i++ )) do
        if [ -f Koleksi$i ]; then
            if cmp Koleksi$i Koleksi$loop &> /dev/null; then
                rm Koleksi$loop break;
            fi
        fi
    done
#fi;
done

for loop in {1..23}; do
    if [ ! -f Koleksi$loop ]; then
        for (( i=23; loop<i; i-- )) do
            if [ -f Koleksi$i ]; then
                mv Koleksi$i Koleksi$loop break
            fi
        done
    fi
done

for loop in {1..9}; do
    mv Koleksi_$loop Koleksi_0$loop
done
