#!/bin/bash

dir='/home/julius/Documents/SISOP/Modul_1/'
bash $dir/3a.sh
foldername=$(date +"%d-%m-%Y")
mkdir "$foldername"
mv $dir/Collection_* "$foldername/"
mv $dir/Foto.log "$foldername/"
