#!/bin/bash 
#obtain Linux distribution name and user information
#by realasking
AA=`lsb_release -a|grep Description|cut -d":" -f2|xargs`
me=`whoami`
hn=`hostname`
echo "<p><span style=\"color:#6b97ff;font-size:14pt;\">$AA</span><span style=\"color:#479e34;font-size:12pt;\"><i> $me@$hn </i></span>"

