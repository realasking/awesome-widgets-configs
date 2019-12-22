#!/bin/bash
curl wttr.in/?format=3 >/tmp/weather_tmp.txt
a=`cat /tmp/weather_tmp.txt`
city=`echo $a|cut -d":" -f1`
we=`echo $a|cut -d":" -f2|awk '{print $1}'`
tm=`echo $a|cut -d":" -f2|awk '{print $2}'`
echo "${city}:<span style=\"font-size:18pt;\">&nbsp;$we</span> &nbsp;$tm"

