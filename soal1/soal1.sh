#!/bin/bash

#1a- show error until username
grep -E -o  'ERROR.*|INFO.*' syslog.log

#1b- show how many errors and sort desc
jmlError=`grep -E -o 'ERROR.*' /home/salsabila/soal-shift-sisop-modul-1-I09-2021/soal1/syslog.log |
 cut -f2- -d\ |
 cut -f1 -d"(" |
 sort |
 uniq -c |
 sort -n -r`
echo  "$jmlError"

#1c- user error and info
user=`cut -d"(" -f2 syslog.log |
      cut -d")" -f1 |
      sort | uniq`
      echo "$user" |
while read name
do
	info=$(grep -E "INFO.*($name))" syslog.log | wc -l) 
	error=$(grep -E "ERROR.*($name))" syslog.log | wc -l)
	echo "$name            Info: $info        Error: $error "
done

#1D Error Message
echo "error_message.csv have been made"
infoerror=`cat syslog.log|
	grep -o 'ERROR.*'|
	cut -d " " -f2-|
	cut -d "(" -f1|
	sort|
	uniq -c|
	sort -nr`
	echo "$infoerror"|
while read checkerror
do
  totalerror=`echo $checkerror|cut -d " " -f1`
  errorname=`echo $checkerror|cut -d " " -f2-`
  echo "$errorname,$totalerror"
done|sed '1 i\Error,Count' > error_message.csv

#1E User Statistic
echo "user_statistic.csv have been made"
username=`cat syslog.log|
	cut -d "(" -f2|
	cut -d ")" -f1|
	sort|
	uniq`
	echo "$username"|
while read user
do
  totalinfo=`cat syslog.log|grep -o "INFO.*($user)"| wc -l`
  totalerror=`cat syslog.log|grep -o "ERROR.*($user)"| wc -l`
  echo "$user,$totalinfo,$totalerror"
done|sed '1 i\Username,INFO,ERROR' > user_statistic.csv
