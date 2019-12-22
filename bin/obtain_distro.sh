#!/bin/bash 
#obtain Linux distribution name and user information
#by realasking
AA=`lsb_release -a|grep Description|cut -d":" -f2|xargs`
DE=`env|grep DESKTOP_SESSION|cut -d"=" -f2`
#me=`whoami`
#hn=`hostname`
#echo "<p align=\"left\"><span style=\"color:#479e34;font-size:14pt;\">&nbsp;&nbsp;$AA</span> <span style=\"color:#d0922f;font-size:12pt;\">$DE</span>"
echo "<span style=\"color:#479e34;font-size:14pt;\">&nbsp;&nbsp;$AA</span>"

