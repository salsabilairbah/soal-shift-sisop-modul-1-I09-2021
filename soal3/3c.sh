#!/bin/bash

dir=/home/julius/Documents/SISOP/Modul_1

foldername=$(date +%d-%m-%Y)
dated=$(date "+%d")
let dated=$dated%2

if [ $dated -eq 0 ]
then
        foldername="Cat_"$(date +%d-%m-%Y)
else 
        foldername="Rabbit_"$(date +%d-%m-%Y)
fi

mkdir "$dir"/"$foldername"

for ((i=1; i<=23; i=i+1))
    do
    if [ $dated -eq 0 ]
    then
            if [ $i -lt 10 ]
                    then wget -a "$dir"/"$foldername"/Foto.log "https://loremflickr.com/320/240/kitten" -O "$dir"/"$foldername"/Collection_0"$i"
            else wget -a "$dir"/"$foldername"/Foto.log "https://loremflickr.com/320/240/kitten" -O "$dir"/"$foldername"/Collection_"$i"
            fi

    elif [ $dated -eq 1 ]
    then
            if [ $i -lt 10 ]
                    then wget -a "$dir"/"$foldername"/Foto.log "https://loremflickr.com/320/240/bunny" -O "$dir"/"$foldername"/Collection_0"$i"
            else wget -a "$dir"/"$foldername"/Foto.log "https://loremflickr.com/320/240/bunny" -O "$dir"/"$foldername"/Collection_"$i"  
            fi
    fi
done
