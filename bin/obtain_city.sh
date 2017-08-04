#!/bin/bash
site1="myip.opendns.com"
site2="@resolver1.opendns.com"
binhome="/home/realasking/bin"
externalip=`dig +short $site1 $site2`
#cityname=`geoiplookup $externalip|awk '{if(NR==1) print $5;else if(NR==2) print $8;}'|xargs|sed 's/,//g'|awk '{print $2,$1}'`
city=`geoiplookup $externalip|awk '{if(NR==1) print $5;else if(NR==2) print $8;}'|xargs|sed 's/,//g'`
tranct=""
for i in $city 
do
	tranct=${tranct}`$binhome/citytrans $i`
done
#countryname=`echo "$city"|awk '{print $1}'`
#cityname=`echo "$city"|awk '{print $2}'`
#transC=`citytrans $countryname`
#transCT=`citytrans $cityname`
#cityname=`geoiplookup $externalip|awk '{if(NR==2) print $8;}'|cut -d"," -f1`
#echo "<span style=\"color:#479e34;\">$cityname</span>"
echo "$tranct"

