#!/bin/bash
site1=`dig +short www.baidu.com|grep -v "[A-Za-z]"|head -n 1`

if [ "$site1"x = x ];then 
	stat=0
else
	AA=`curl myip.ipip.net 2>/dev/null`
	IPADDR=`echo $AA|awk '{print $2}'|sed 's/^...//g'`
      regex="\b(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[1-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[1-9])\b"
      ckStep2=`echo $IPADDR | egrep $regex | wc -l`
      if [ $ckStep2 -eq 0 ]
      then
          stat=0
      else
          stat=1
      fi
fi
echo "$stat"
