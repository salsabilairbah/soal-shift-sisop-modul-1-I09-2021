#!/bin/bash

#
cat syslog.log | cut -f4- -d "[" | cut -f6- -d " "

#jmlError=`grep -E -o 'ERROR.*' /home/salsabila/soal-shift-sisop-modul-1-I09-2021/soal1/syslog.log |
 #cut -f2- -d\ |
 #cut -f1 -d"(" |
 #sort |
 #uniq -c |
 #sort -n -r`
#echo  "$jmlError"
